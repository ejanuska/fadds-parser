/*
   FaddsBuffer.java
     
     Buffers delimited output that must be flushed after data file completely is scanned.
*/

import java.io.FileInputStream;
import java.util.NoSuchElementException;
import java.io.FileNotFoundException;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
 
public class FaddsBuffer{

   private static    LayoutParser         layout            = new LayoutParser();
   private final     String               DEFAULT_DELIMITER = "|";
	 private final     Integer              MAX_BUFFER_SIZE   = 50;
   private           List<String>         buffer;
   private           LinkedList<String>   recTypeList;
   private           boolean              bufferFull        = false;
   private           LinkedList< LinkedList<String> > outputBuffer;
   
   /* Constructors */
   public FaddsBuffer(){}
   public FaddsBuffer( LayoutParser layoutIn ){
      layout = layoutIn;
		
		// Setup buffer, uses layout
		setupBuffer();
   }
   
   public void sendToBuffer( String bufferIn, String strLrt ){
      Integer i;
		
      for( i = 0; i < outputBuffer.size(); i++ ){
         // The index of the recTypeList correspond to the 
			// items in the outputBuffer list, so use the index to place in the 
			// correct buffer.
			if( strLrt.compareToIgnoreCase( recTypeList.get( i ) ) == 0 ){
            outputBuffer.get( i ).add( bufferIn );
            break;
		   }
         // If only one record type exists for this product send to buffer
         // recTypeList.get( 0 )
         else if( recTypeList.size() == 1 ){
            outputBuffer.get( i ).add( bufferIn );
            break;
         }
         //System.out.printf("\nBuffered %s.", bufferIn );
      }
		// Check if buffer needs flushing
      if ( isBufferFull() ){ flushBuffer(); }
   }
   
	private void setupBuffer(){
	   // Setup list of record types
      recTypeList = new LinkedList<String>();
		recTypeList = layout.getLayoutRecordTypeList();
		outputBuffer = new LinkedList< LinkedList<String> >();
		
		// Setup Buffer with a list for each layout record type list
		// outputBuffer is a LinkedList of LinkedList
		for ( String recType : recTypeList ){
		   LinkedList<String> newList = new LinkedList<String>();
			outputBuffer.add( newList );
         eraseFile( recType );
		}
	}
   
   void eraseFile( String strRecType ){
      String   deleteFilePath = new String ();
      deleteFilePath = 
              System.getProperty( "user.dir" ) + 
              File.separator + 
              "delimited_data" +
              File.separator +
              layout.getProductName() +
              File.separator + 
              strRecType.toUpperCase() + 
              ".psv";
              
      File file = new File( deleteFilePath );
      // If file exists, delete it
      // file will be recreated in flushBuffer()
      if ( file.exists() ) { file.delete(); }
   }
	
   private String getRecordType( String rec ){
      return rec.substring( 0, rec.indexOf( DEFAULT_DELIMITER ) );
   }
   
   // flush buffers 
   public void flushBuffer(){
      LinkedList<String> lrtList        = layout.getLayoutRecordTypeList();
      String             outputFilePath = new String ();
      String             lrtName        = new String();
      
      // for each record type find all the lines that are the same type in the buffer, 
      // pop them from lrtBuffer into the appropiate file
	   for( LinkedList<String> lrtBuffer : outputBuffer ){
		   lrtName = lrtList.pop();
          // Where the files are written
         // current directory\fadds\delimited_data\PRODUCT NAME\RECORD TYPE NAME.psv
         outputFilePath = 
              System.getProperty( "user.dir" ) + 
              File.separator + 
              "delimited_data" +
              File.separator +
              layout.getProductName() +
              File.separator + 
              lrtName.toUpperCase() + 
              ".psv";
              
         try {
			   File file = new File( outputFilePath );
            // If file doesnt exist, create it
            if ( !file.exists() ) { file.createNewFile(); }
            FileWriter fw = new FileWriter( file.getAbsoluteFile(), true );
			   BufferedWriter bw = new BufferedWriter( fw );
            
            // Finally write each line to the file
				while( lrtBuffer.size() > 0 ){
               bw.write( lrtBuffer.pop() );
			   }

		      bw.close();
         } catch (IOException e) {
			   e.printStackTrace();
		   } // End try catch block   
		} // End for
   }
   
   private boolean isBufferFull(){
      boolean status = false;
      for( LinkedList<String> lrtBuffer : outputBuffer ){
		   if( lrtBuffer.size() >= MAX_BUFFER_SIZE ){
            return true;
         } 
      }
      return false;
   } // End isBufferFull()
} // End class FaddsBuffer
