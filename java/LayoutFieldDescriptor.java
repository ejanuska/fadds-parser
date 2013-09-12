/*
   LayoutFieldDescriptor.java
   Created 2/23/13
   Edward Januska
   
   Used to parse FADDS layout files for field sizes used to manipulate 
   FADDS data files. 
   FADDS data is delivered in fixed width text files without delimiters.
   The field sizes and locations are delivered in files called xxx_rf.txt where xxx is 
   the product particular to that file. See layout files for specific information.
   By creating an instance of LayoutFielddescriptor objects that location data can be
   maintanined per field.
   Start position and length information is provided in layout files. End position is 
   calculated using calculateEnd() or instansiating a LayoutFieldDescriptor object while passing 
   start position and length to the constructor.
   
   Added after 3/22/13 is a field for fieldName. A raw string with spaces and punctuation 
   will be converted in this class to a field name suitable for use as a SQL column name using
   camel case style.
*/

   import java.util.Scanner;
   import java.io.FileInputStream;
   import java.util.NoSuchElementException;
   import java.io.FileNotFoundException;
   import java.io.File;
   import java.util.LinkedList;
   import java.util.ListIterator;
   
   public class LayoutFieldDescriptor {
      private  Integer    start;
      private  Integer    end;
      private  Integer    length;
      private  String     rawFieldName;
      private  String     fieldText;
      
      /* Constructors */
      public LayoutFieldDescriptor(){
         start       = 0;
         end         = 0;
         length      = 0;
         fieldText = new String();
      }
      
      public LayoutFieldDescriptor( Integer startIn, Integer lengthIn ){
         start       = startIn - 1;
         length      = lengthIn;
         fieldText = new String();
         calculateEnd();
      }
      
      public LayoutFieldDescriptor( Integer startIn, Integer lengthIn, String rawFieldNameIn ){
         start        = startIn - 1;
         length       = lengthIn;
         calculateEnd();
         fieldText    = new String();
         rawFieldName = new String( rawFieldNameIn );
         parseRawFieldName( rawFieldNameIn );
      }
      
      /* Functions */
      private void calculateEnd(){
         // determine end location of field
         end = start + ( length );
      }
     
      private void setFieldDescriptor( Integer startIn, Integer lengthIn ){
         start  = startIn - 1;
         length = lengthIn;
         calculateEnd();
      }
      
      public Integer getLength(){
         return length;
      }
      
      public Integer getStart(){
         return start;
      }
      
      public Integer getEnd(){
         return end;
      }
      
      public String getFieldText(){
         return fieldText;
      }
      
      /* 
         Parse raw field descriptor data from scanned input string 
         and return a LayoutFieldDescriptor.
         Called during scanning.
      */    
      public void parseFieldDescriptor( String input ){
         String [] splitString = input.split( "\\s+" );
         
         String sLength = "";  // the length field, in string format
         String sStart = "";   // the start field in string format
         String AN = "AN";
         String N = "N";
         
         // if reading AN 0001 0003 ...
         for( int j = 0; j < 6; j++ ){
            if ( splitString[ j ].equals( AN ) ){
               sLength = splitString[ j + 1 ];
               sStart  = splitString[ j + 2 ];
               break;               
            }
            if ( splitString[ j ].equals( N ) ){
               sLength = splitString[ j + 1 ];
               sStart  = splitString[ j + 2 ]; 
               break;
            }
            // If reading AN0001 0003 ...
            if ( splitString[ j ].matches( "AN\\S++" ) ){
               sLength = splitString[ j ].substring( 2, splitString[ j ].length() );
               sStart  = splitString[ j + 1 ]; 
               break;
            }
         }
         // values are still in string format, clean them up
         sLength = sLength.trim();
         sStart = sStart.trim();
         // convert string values to integer
         try{
           setFieldDescriptor( Integer.parseInt( sStart ), Integer.parseInt( sLength ) );
         } catch( NumberFormatException nfx ) {
            System.out.printf( "\nERROR parsing field descriptors in LayoutParser"); 
            System.out.printf( "\ninput string was: %s\n", input );
         }
         // Calculate end of field
         calculateEnd();
         parseRawFieldName( input );
      } // End parseFieldDescriptor()
      
      // Make a column name out of the crap after the length and location descriptors
      private void parseRawFieldName( String input ){
         String[] splitString = input.split( "\\s+" );
         StringBuilder output = new StringBuilder();
         
         Integer i = 0;
         for( String str : splitString ){
            //System.out.printf("\n%s", str);
            if( i > 4 ){
               str.replaceAll( "\\W", "" );
               if( str.compareToIgnoreCase( "(formatted)" ) == 0)
                  str = "formatted";   
               if( str.compareToIgnoreCase( "(seconds)" ) == 0 )
                  str = "seconds";
               int openParen = str.indexOf( "(" );
               int closeParen = str.indexOf( ")" );
               
               if ( openParen > -1 ){
                  str = " ";
               }
               if ( closeParen > 0 ){
                  str = " ";
               }
               
               int j = str.indexOf(",");
               if ( j > 0 ) { str = str.substring( 0, j ); }
               
               // Remove dashes
               j = str.indexOf("-");
               if ( j != -1 ) { 
                  String front = new String( str.substring( 0, j ) );
                  String back  = new String( str.substring( j+1, str.length() ) );
                  str = new StringBuilder( front + back ).toString(); 
               }
               
               // Remove quotes
               while ( str.indexOf("'") != -1 ){
                  j = str.indexOf("'");
                  if ( j != -1 ) { 
                     String front = new String( str.substring( 0, j ) );
                     String back  = new String( str.substring( j+1, str.length() ) );
                     str = new StringBuilder( front + back ).toString(); 
                  }
               }
               
               // Remove slashes
               while ( str.indexOf("/") != -1 ){
                  j = str.indexOf("/");
                  if ( j != -1 ) { 
                     String front = new String( str.substring( 0, j ) );
                     String back  = new String( str.substring( j+1, str.length() ) );
                     str = new StringBuilder( front + back ).toString(); 
                  }
               }
               
               if( str.length() == 0 ) { break; }
               // remove period and all text after
               j = str.indexOf(".");
               if ( j > 0 ) { str = str.substring( 0, j ); }
               
               // output_this_format
               String firstChar = str.substring( 0, 1 );
               String otherChars = str.substring( 1, str.length() ).toLowerCase();
              
               output.append( firstChar.trim() + otherChars.trim() + "_");
            }
            i++;
         }
         // remove trailing "_"
         if (output.length() > 0){
           fieldText = output.substring( 0, output.length() - 1).toString();
         }
         // fieldText = output.toString();
      }
      
      
      // Returns true if the line appears to contain field desc data
      // TODO: make this use regex to match the input
      public Boolean isFieldDescriptor( String input ){
         final Integer MINSTRINGSIZE = 10;
         boolean istatus = false;
         if( input.length() <  MINSTRINGSIZE ) return false;
         
         String s0 = input.substring( 0, 1 );
         String s3 = input.substring( 3, 4 );
         String s4 = input.substring( 4, 5 );
         // The location of the justification and numeric fields vary between layout files
         if( ( s0.equals("L") || s0.equals("R") ) && ( s3.equals("N") || s4.equals("N") ) && ( ! isBlankRecordType( input ) ) ){
            istatus = true;
           
         }
         else{
            istatus = false;
            
         }
         return istatus;
      }
      
      private boolean isBlankRecordType( String rec ){
         String [] splitString = rec.split( "\\s+" );
         boolean bstatus = false;
         
         for( String str : splitString ){
            if ( str.matches( ".?BLANK.*?" ) ){
               //System.out.printf( "\nFound blank field:  %s", rec );
               return true;
            }
         }
         return false;
      }
      
      private void printFieldDescriptor(){
         System.out.printf( " {%d, %d, %d}", start, length, end );
      }
      
   } // End class LayoutFieldDescriptor 
 // End package  com.januskadesign.fadds 