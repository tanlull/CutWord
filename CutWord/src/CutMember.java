import java.io.*;
import java.util.Arrays;
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
	  String OUTPUT_FOLDER="member_output";
	  String INSERT_ID_STR="SET INSERT_ID";
	  String totalFile="";
	
	
	  //Check dup Time Stamp;   SET TIMESTAMP=1394438821/*!*/;
	  String lastTimeStamp="";
	  String startTimeStamp="SET";
	  String followTimeStamp="TIMESTAMP";
	  
	  StringBuffer totalsb = new StringBuffer();
	
  int mode; // 0 = no time stamp
  int lineNumber=0;
  int COMMIT_EVERY=500; 
  int fileCount=1;
  int maxFileSave = 20;

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
    Arrays.sort(inputFiles);  // Sort by name
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
	  
	  
	  String [] tables = {"`members`","`member_txn`","`customers`"
			  ,"`3g_customers`","`3g_member_txn`","`3g_request_access_services`"};			  
	  wordMap.put("INSERT",tables);
			  
	  wordMap.put("UPDATE",tables);
			  
	  wordMap.put("DELETE",tables);
	  
	  String [] word5 = {" "};	wordMap.put("DELIMITER",word5);
	  
	  String [] word6 = {" "};			  
	  wordMap.put("use",word6);
	  
	  // convert set to string 
	  Set <String>  s = wordMap.keySet();
	  keyWord = s.toArray(new String[s.size()]);		
	  
	  }
	  
  public void process(){
	  String currentFile="";
	  
 	 // create total output file
	  String outputPath= listFile.getDir(inputFiles[0])+File.separator+OUTPUT_FOLDER;		
 	 totalFile = outputPath+File.separator+"00_MEMBER_ALL.sql";
 	 
 	 
	  for(String file : inputFiles ) {
		  currentFile = file;
		  processFile(file);
	  }
	  
	  // save all data to one file
      try {
    	 
      	 totalsb.append(COMMIT_END+delimiter);  
    	 
    	 FileUtils.saveFile(totalFile,totalsb);
    	 System.out.println("Summary File :"+totalFile);
    	 System.out.println("Generated output files were saved in : "+OUTPUT_FOLDER);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      
      cleanTotalFile(totalFile);
      
  }
  
  
  
  
  
  public void cleanTotalFile(String totalFile){
    try {
		  StringBuffer sb = new StringBuffer();
		  sb.append("DELIMITER /*!*/;").append(newline);;
	      FileInputStream fin = new FileInputStream(totalFile);
	      InputStreamReader reader = new InputStreamReader(fin, "UTF-8");
	      BufferedReader br= new BufferedReader(reader);
	      String tmpStr = "";
	      for (String line = br.readLine(); line != null; line = br.readLine()) {
	    	
	    	  
	       // Delete all delemiter   // delete all commit 
	        if(containUnusedLine(line)==true) continue;
	        

	    	  
	        //get rid of many line "SET INSERT_ID" --> use only last line
	        if(line.startsWith(INSERT_ID_STR)) {	
	        	//System.out.println("Found "+line);
	        	String tmpLine;
	        	for (tmpLine = br.readLine(); tmpLine != null; tmpLine = br.readLine()) {
	        		if(tmpLine.startsWith(INSERT_ID_STR)) {
	        			line = tmpLine;
	        			//System.out.println("Found loop"+tmpLine);
	        		}
	        		else {
	        			if(containUnusedLine(tmpLine)==false) line += newline+tmpLine;
	        			break; 
	        		}
	        	}
	        	
	        }
	        
	        
	        sb.append(line).append(newline);
	 
	
	      }
	      
	      //last line
	      sb.append("DELIMITER ;").append(newline).append("COMMIT;").append(newline);;
	      
	      //save to new file
	      FileUtils.saveReplaceFile(totalFile+".lean.sql",sb);
	      br.close();reader.close();fin.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
  }
  
  public boolean containUnusedLine(String line){
      // Delete all delemiter 
      if(line.startsWith(DELI_WORD))  return true;
      
     // delete all commit 
      if(line.startsWith(COMMIT_END)) return true;
      
      return false;
  }
  
  public void processFile(String inFile){
    try{
      System.out.println(fileCount +" : "+inFile);
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
      totalsb.append(sb); // total 
      
      sb.append(COMMIT_END+delimiter);      
    
      FileUtils.saveReplaceFile(listFile.addLastPath(inFile,OUTPUT_FOLDER)+".out."+mode+".sql",sb);
      
      
      //save StringBuffer to file na dclear string buffer
      if((fileCount%maxFileSave)==0){
    	  if(fileCount <= maxFileSave) FileUtils.saveReplaceFile(totalFile,totalsb); //first time saving
    	  else FileUtils.saveFile(totalFile,totalsb);
    	  totalsb.delete(0, totalsb.length()); // clear string buffer
    	  System.out.println("Flush data to file");
      }
      fileCount+=1;
      br.close();reader.close();fin.close();
    }catch(Exception e){
      e.printStackTrace();
    }
   // System.out.println("Finished");
    
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
   
  
}
 
	public void printArray(String[] ary) {
		for(String i:ary) {
			System.out.print(i+"\n");
		}
		System.out.println("\n");
	}
 
}
