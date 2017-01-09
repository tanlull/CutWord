package utils.billing.util;
import java.io.File;
import java.io.FilenameFilter;

public class ListFiles {
	File root;
	
	public ListFiles(String dir){		
		root = new File(dir);
	}
	
	
	public void setDir(String dir){
		root = new File(dir);
	}
  
	public String[] finDirFullPath(){
		String [] str = findDir();
		if (str==null) {
			str = new String [0];
		}else{
			for(int i=0;i<str.length;i++){
				str[i]=root+File.separator+str[i];
			}
		}
		return str;
	}
	
    public String[] findDir() { 
    String[] directories = root.list(new FilenameFilter() {
      @Override
      public boolean accept(File dir, String name) {
        return new File(dir, name).isDirectory();
      }
    });
    return directories;
    }
    
    public String[] findFile() { 
    String[] directories = root.list(new FilenameFilter() {
      @Override
      public boolean accept(File dir, String name) {
        return new File(dir, name).isFile();
      }
    });
    return directories;
    }
    
    public String[] findFileFilter(String surname) { 
    String[] directories = root.list(new FilenameFilter() {
      @Override
      public boolean accept(File dir, String name) {
        return name.toLowerCase().endsWith(surname);
      }
    });
    return directories;
    }
    
	public String[] findFileFullPath(){
		String [] str = findFile();
		if (str==null) {
			str = new String [0];
		}else{
			for(int i=0;i<str.length;i++){
				str[i]=root+File.separator+str[i];
			}
		}
		return str;
	}
	
	public String[] findFileFullPathFilter(String surname){
		String [] str = findFileFilter(surname);
		if (str==null) {
			str = new String [0];
		}else{
			for(int i=0;i<str.length;i++){
				str[i]=root+File.separator+str[i];
			}
		}
		return str;
	}
    
	
	public  String getDir(String fullPathfile){
		File f = new File(fullPathfile);
		String absolutePath = f.getAbsolutePath();		
   	    String filePath = absolutePath.substring(0,absolutePath.lastIndexOf(File.separator));
   	    return filePath;
	}
	
	public  String getFileName(String fullPathfile){
		File f = new File(fullPathfile);
		return f.getName();
		
	}
	
	//input  D:\Dropbox\Billing\Java\sql_100\slave-relay-bin.000086.sql
	//output D:\Dropbox\Billing\Java\sql_100\OUTPUT\slave-relay-bin.000086.sql
	public  String addLastPath(String fullPathfile,String addPath){
		String p = getDir(fullPathfile);
		String f = getFileName(fullPathfile);	
		
		String newDir =  p+File.separator+addPath;
		
		File directory = new File(newDir);
		
		if(!directory.exists()) directory.mkdir();
		
		return directory+File.separator+f;
	}

	
}
