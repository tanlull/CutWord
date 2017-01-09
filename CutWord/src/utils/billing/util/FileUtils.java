package utils.billing.util;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;

public class FileUtils {

	

	
	public static boolean saveFile(String fileName, StringBuffer sb)throws IOException{
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
