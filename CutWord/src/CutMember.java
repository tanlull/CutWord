import java.io.*;
import java.util.HashMap;
import java.util.Set;

import utils.billing.util.FileUtils;
import utils.billing.util.ListFiles;

public class CutMember{
  
	 String COMMIT_START = "BEGIN";
	  String COMMIT_END = "COMMIT";
	  String comment="#";
	  String delimiter = "/*!*/;";
	  String DELI_WORD="DELIMITER";
	
	
	  //Check dup Time Stamp;   SET TIMESTAMP=1394438821/*!*/;
	  String lastTimeStamp="";
	  String startTimeStamp="SET";
	  String followTimeStamp="TIMESTAMP";
	
  int mode; // 0 = no time stamp
  int lineNumber=0;
  int COMMIT_EVERY=500; 

  ListFiles listFile;
  String [] inputFiles;
  

  
  
  String inDir;
  public static String newline = System.getProperty("line.separator");
  
  String [] keyWord ;
  
  HashMap  <String,String []> wordMap = new  HashMap<String, String[]>();
    
  public CutMember (String dir,int mode){
	inDir = dir;
    this.mode=mode;
    listFile = new ListFiles(inDir);
    inputFiles =  listFile.findFileFullPathFilter(".sql");
    //printArray(inputFiles);
    buildWordCollection();
  }
  
  public void buildWordCollection(){

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
	  
	  for(String file : inputFiles ) processFile(file);
	  
  }
  
  
  public void processFile(String inFile){
    try{
      System.out.println("File: "+inFile);
      lineNumber=0;
      StringBuffer sb = new StringBuffer();
      FileInputStream fin = new FileInputStream(inFile);
      InputStreamReader reader = new InputStreamReader(fin, "UTF-8");
      BufferedReader br= new BufferedReader(reader);
      String tmpStr = "";
      for (String line = br.readLine(); line != null; line = br.readLine()) {
        //System.out.println(line);
    	lineNumber++;
    	if(line.startsWith(comment)==true) continue; //ignore comment
        
        tmpStr = processLine(br,line);
        if (tmpStr != null) sb.append(tmpStr).append(newline);
 

      }
    //  System.out.println("Process "+i+" Line");
      
      sb.append(COMMIT_END+delimiter);

      FileUtils.saveFile(inFile+".out."+mode+".sql",sb);
      
    }catch(Exception e){
      e.printStackTrace();
    }
    System.out.println("Finished");
  }
  
  public String processLine(BufferedReader br,String line){
	  
	
	for(int i=0; i<keyWord.length;i++){
		
		if(line.startsWith(keyWord[i])){
			
			
			//Check delimiter
			if(line.startsWith(DELI_WORD)){
				delimiter = line.substring(line.indexOf(DELI_WORD)+DELI_WORD.length()+1,line.length());
				return line;
			}
			
			String statement = "";			
			
				while(line != null && line.contains(delimiter) == false) {
					statement += line;
					try {
						line = br.readLine();
						lineNumber++;
						//System.out.println(lineNumber+":"+line);
					} catch (IOException e) {
						System.out.println(lineNumber);
						System.out.println(line);
						System.out.println(statement);
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
  
  
 public static void main(String [] args){
   
   if(args.length < 1){
   System.out.println("Please provide file to be processed");
   System.out.println("Usage : >java -classpath CutWord.jar CutMember FullPath");
  }else{
	  
  	int mode = 0;// No Time Stamp Mode
  	if(args.length == 2) mode = Integer.parseInt(args[1]);
  	System.out.println("Process path : "+ args[0]);
    CutMember cw=new CutMember(args[0],mode); 
    cw.process();

 }
   
   /*
	
	int mode = 0;// No Time Stamp Mode
    CutWord cw=new CutWord("slave-relay-bin.000072.sql",mode);  
    cw.process();
    */
  
}
 
	public void printArray(String[] ary) {
		for(String i:ary) {
			System.out.print(i+"\n");
		}
		System.out.println("\n");
	}
 
}
