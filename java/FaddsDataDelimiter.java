/*
   FaddDataDelimiter.java
   
     Scans data files, makes new record type files from product files.
     
     Uses layout info from a passed in LayoutParser.
     
     Uses layout object info to add delimiter character, default is: '|'
     
     Buffers output that must be flushed after data file completely is scanned.
*/

import java.util.Scanner;
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

public class FaddsDataDelimiter{

   private static    LayoutParser         layout            = new LayoutParser();
   private final     String               DEFAULT_DELIMITER = "|";
	private LinkedList< LinkedList<String> > outputBuffer;
	private           LinkedList<String>   recTypeList;
   private           FaddsBuffer          buffer;
   private     String       workingPath;

   /* Constructors */
   public FaddsDataDelimiter(){}
   public FaddsDataDelimiter( LayoutParser layoutIn ){
      layout = layoutIn;
		
		// Setup for buffer
		buffer = new FaddsBuffer ( layout );
      setupDirectories();
   }

   public FaddsDataDelimiter( LayoutParser layoutIn, String path ){
      layout = layoutIn;
      workingPath = new String( path );
      // Setup for buffer
      buffer = new FaddsBuffer ( layout );
      setupDirectories();
   }
   
   // get data file name from layout object
   private String getDataFilePath(){
      

      //String workingDir = System.getProperty( "user.dir" );
      //String filePath = new String ( workingDir + File.separator + 
            //"data" + File.separator + layout.getProductName().toUpperCase() + ".txt" );
       String filePath = new String ( workingPath + File.separator + 
              layout.getProductName().toUpperCase() + ".txt" );

      return filePath;
   }
   
   private void setupDirectories(){
      
      // Create directory if it does not exist
      String productPath = new String( 
         workingPath + 
         File.separator + 
         "delimited_data" +
         File.separator +
         layout.getProductName() 
      );
      /*
      String productPath = new String( 
         System.getProperty( "user.dir" ) + 
         File.separator + 
         "delimited_data" +
         File.separator +
         layout.getProductName() 
      ); */

      File dirProd = new File( productPath );
      if( !dirProd.exists() ){ 
         dirProd.mkdirs();
      }
      
      /*LinkedList<String> lrtList = layout.getLayoutRecordTypeList();
      for ( String item : lrtList ){
      
         // Create directory if it does not exist
         String lrtPath = new String( 
            System.getProperty( "user.dir" ) + 
            File.separator + 
            "delimited_data" +
            File.separator +
            layout.getProductName() +
            File.separator + 
            item.toUpperCase() 
         );
         File dirLrt = new File( lrtPath );
         if( !dirLrt.exists() ){ 
            dirLrt.mkdirs();
         }
      }*/
   }
   
   public void scanDataFile(){
      String filePath         = new String ( getDataFilePath() );
		String delimLine        = new String();
      String strLRT           = new String();
      String rawLine          = new String();
      // for testing only 
      Integer lineCount = 0;      
      
      // Read layout file line by line
      try {  
         Scanner lineScanner = new Scanner( new FileInputStream( filePath ) );
         while ( lineScanner.hasNextLine() ){
            rawLine = lineScanner.nextLine();
            
            // get layout record type
            strLRT = getLayoutRecordType( rawLine );
            
            // delimit line
            delimLine = delimitLine( rawLine );
            
		      // Send line to buffer	
		      buffer.sendToBuffer( delimLine, strLRT );
            
            // FOR DEBUGGING
            lineCount++;
				//System.out.printf("\nDelimited %d lines.", lineCount );
            
				if ( lineCount % 5000 == 0 ) { 
               System.out.printf(". "); 
            }
				// END DEBUGGING LINES
         }
         lineScanner.close();
      } // End try
      catch ( FileNotFoundException e2 ) {
          e2.printStackTrace();
      }
      catch ( Exception ee ){
         ee.printStackTrace();
      }
      
      // Flush the buffer or lose data
      buffer.flushBuffer();
      System.out.printf("\nDelimited %d lines from %s", lineCount,  layout.getProductName() );
   } // End scanDataFile()
   
   private String delimitLine( String line ){
      LayoutRecordType lrt = new LayoutRecordType();
      String strLrt = new String();
      String field  = new String();
      StringBuilder output = new StringBuilder();
      LayoutFieldDescriptor lfd = new LayoutFieldDescriptor();
      
      // Get the layoutrecordtype of the this line, normally the first three or four charcters in a line
      strLrt = getLayoutRecordType( line ).trim();
      // DEBUGGING
      //System.out.printf( "\nstrLrt = %s", strLrt);
      
      lrt = layout.getLayout( strLrt );
      ListIterator itrDesriptorList = layout.iterLayoutFieldDescriptor( lrt );
      
      // For product files with more then one record type do not
      // use the first field, its captured in the record type name.
      // Advance to the next field. 
      if( layout.layoutRecordListSize() > 1 ){
         lfd = ( LayoutFieldDescriptor )itrDesriptorList.next();
      }
      
      // add a blank col so the auto increment col can be populated 
      // during import.
      //output.append( DEFAULT_DELIMITER + " " + DEFAULT_DELIMITER );
      // extract fields from raw string "line", build new string with delimiter character
         
      while( itrDesriptorList.hasNext() ){
         output.append( DEFAULT_DELIMITER );
         lfd = ( LayoutFieldDescriptor )itrDesriptorList.next();
         field = line.substring( lfd.getStart(), lfd.getEnd() ).trim();
         output.append( field );
         
      }
      output.append("|\n");
      
      // DEBUGGING OUTPUT
      
      //System.out.printf( "\nline: %s\noutput: %s", line.substring(0, 80) , output );
  
      return output.toString();
		
   } // End delimitLine()
   
   private String getLayoutRecordType( String line ){
      Integer rtLength  = 0;
      rtLength = layout.getRecordTypeLength();
      return line.substring( 0, rtLength ).trim();
   }
	
   private String getRecordType( String rec ){
      return rec.substring( 0, rec.indexOf( DEFAULT_DELIMITER ) );
   }
   
 } // End public class FaddsDataDelimiter.java
