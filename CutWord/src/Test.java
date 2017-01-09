
public class Test {
	public static void main(String [] args){
	String line = "DELIMITER /*!*/;";
	
	String delimiter = line.substring(line.indexOf("DELIMITER")+"DELIMITER".length()+1,line.length());
	System.out.println(delimiter);
	}
}
