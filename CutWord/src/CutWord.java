import java.io.*;
import java.util.HashMap;
import java.util.Set;

public class CutWord{
  
  int mode; // 0 = no time stamp
	
  int COMMIT_EVERY=500; 
  String COMMIT_START = "BEGIN";
  String COMMIT_END = "COMMIT/*!*/;";
  String comment="#";

  
  //Check dup Time Stamp;   SET TIMESTAMP=1394438821/*!*/;
  String lastTimeStamp="";
  String startTimeStamp="SET";
  String followTimeStamp="TIMESTAMP";
  
  
  String inFile;
  public static String newline = System.getProperty("line.separator");
  
  String [] keyWord ;
  
  HashMap  <String,String []> wordMap = new  HashMap<String, String[]>();
  
   String endWord = "/*!*/;";
    
  public CutWord (String file,int mode){
    inFile = file;
    this.mode=mode;
    buildWordCollection();
  }
  
  public void buildWordCollection(){
	 // String [] firstWord = {"SET","INSERT","UPDATE ","DELETE","SET","SET","DELIMITER","use"};
	 // String [] secondWord = {"TIMESTAMP","INTO","SET","FROM","@@session","INSERT_ID","",""};

	  //String [] word1 = {"TIMESTAMP","@@session","INSERT_ID"};	
	  
	  if (mode == 0) {
		  String [] word1 = {"INSERT_ID"};
		  wordMap.put("SET",word1);
		  System.out.println("set to 'NO' TIMESTAMP mode"); 
	  }else {
		  String [] word1 = {"TIMESTAMP","INSERT_ID"};
		  wordMap.put("SET",word1);
		  System.out.println("set to TIMESTAMP mode"); 
	  }
	  
	  
	  String [] word2 = {"INTO"};			  
	  wordMap.put("INSERT",word2);
	  
	  String [] word3 = {"SET"};			  
	  wordMap.put("UPDATE",word3);
	  
	  String [] word4 = {"FROM"};			  
	  wordMap.put("DELETE",word4);
	  
	  String [] word5 = {" "};	wordMap.put("DELIMITER",word5);
	  
	  String [] word6 = {" "};			  
	  wordMap.put("use",word6);
	  
	  // convert set to string 
	  Set <String>  s = wordMap.keySet();
	  keyWord = s.toArray(new String[s.size()]);		
	  
	  }
	  
  
  
  
  public void process(){
    try{
      //System.out.println("Start");
      int i=0;
      StringBuffer sb = new StringBuffer();
      FileInputStream fin = new FileInputStream(inFile);
      InputStreamReader reader = new InputStreamReader(fin, "UTF-8");
      BufferedReader br= new BufferedReader(reader);
      String tmpStr = "";
      for (String line = br.readLine(); line != null; line = br.readLine()) {
        //System.out.println(line);
          i++;
    	if(line.startsWith(comment)==true) continue; //ignore comment
        
        tmpStr = processLine(br,line);
        if (tmpStr != null) sb.append(tmpStr).append(newline);
 

      }
    //  System.out.println("Process "+i+" Line");
      
      sb.append(COMMIT_END);
      
      writefile(sb);
    }catch(Exception e){
      e.printStackTrace();
    }
    System.out.println("Finished");
  }
  
  public String processLine(BufferedReader br,String line){
	  
	
	for(int i=0; i<keyWord.length;i++){
		
		if(line.startsWith(keyWord[i])){
			String statement = "";			
			
			while(line.contains(endWord) == false) {
				statement += line;
				try {
					line = br.readLine();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}		
				
			}									
			
			statement += line; // get complete statement 
			
			
			// Check Second word 
			
			boolean isFocusStatement=false;
			String [] secondWord = wordMap.get(keyWord[i]);
			for(int j=0; j<secondWord.length;j++){
				if(statement.contains(secondWord[j])) {
					isFocusStatement=true;
					break;
				}
			}
			
			//if not found a complete word sentence 
			if(isFocusStatement==false) return null;
					
			// Check DUP ...	SET TIMESTAMP=1394438821/*!*/;			
			if(statement.startsWith(startTimeStamp)){
				if(statement.contains(followTimeStamp)){
					if(lastTimeStamp.equals(statement)==true){
						return null; // ignore statement if same time stamp
					}else{
						lastTimeStamp=statement;
					}
				}
			}
			
			
			return statement; 
		}
		
	}
		

    return null;
  }
  
  public void writefile(StringBuffer sb){
	  try {
		   
		  Writer out = new BufferedWriter(
				  new OutputStreamWriter(
						  new FileOutputStream(inFile+".out."+mode+".sql"), "TIS-620"));
		      out.write(sb.toString());
		         boolean success = true;
		         out.close(); 
		    } catch(Exception e) {
		       e.printStackTrace();
		    }

  }
  
 public static void main(String [] args){
   
   if(args.length < 1){
   System.out.println("Please provide file to be processed");
   System.out.println("Usage : >java -jar CutWord.jar filename.sql mode");
  }else{
	  
  	int mode = 0;// No Time Stamp Mode
  	if(args.length == 2) mode = Integer.parseInt(args[1]);
  	System.out.println("Process File : "+ args[0]);
    CutWord cw=new CutWord(args[0],mode); 
    cw.process();

 }
   
   /*
	
	int mode = 0;// No Time Stamp Mode
    CutWord cw=new CutWord("slave-relay-bin.000072.sql",mode);  
    cw.process();
    */
  
}
}