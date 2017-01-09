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
    
}
