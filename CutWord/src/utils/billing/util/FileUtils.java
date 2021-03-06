package utils.billing.util;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;

public class FileUtils {

	// save if file exists , append 
	public static boolean saveFile(String fileName, StringBuffer sb)throws IOException{
	
		boolean success = false;
		
		  try {
			   
			  Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileName,true), "UTF-8"));
			      out.write(sb.toString());
			         success = true;
			         out.close(); 
			    } catch(Exception e) {
			       e.printStackTrace();
			    }
		
		return success;
	}

	
	// save if file exists , replace 
	public static boolean saveReplaceFile(String fileName, StringBuffer sb)throws IOException{
		
		boolean success = false;
		
		  try {
			   
			  Writer out = new BufferedWriter(
					  new OutputStreamWriter(
							  new FileOutputStream(fileName), "UTF-8"));
			      out.write(sb.toString());
			         success = true;
			         out.close(); 
			    } catch(Exception e) {
			       e.printStackTrace();
			    }
		
		return success;
	}

	
}
