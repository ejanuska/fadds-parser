 // FileChooser.java
import javax.swing.*;

public class FileChooser
{
    public String getFaddsDir( String title){
    	JFileChooser chooser = new JFileChooser();
    	//String workingDir = System.getProperty( "user.dir" );
		chooser.setCurrentDirectory( new java.io.File(".") );
		chooser.setDialogTitle( title );
		chooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
		chooser.setAcceptAllFileFilterUsed(false);
		chooser.showSaveDialog(null);
		return chooser.getSelectedFile().toString();
	}
}