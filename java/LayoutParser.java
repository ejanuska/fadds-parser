/*
   LayoutParser.java
   Created 2/23/13
   Edward Januska
   
      Used to parse FADDS layout files for field sizes used to manipulate 
   FADDS data files.
      This class performs that actual scanning of layout files and the constuction
   of objects that contain layout data for the product file that the scanner parses.
   A list of record types is contained in member recordTypeList which has an iterator.
   As the layout file is scanned the start location field of the record is monitored. Once
   that value returns to the value 1 a new type of record has been encountered. Lines that 
   do not contain the data consistent with a layout record field descriptor are discarded.
   Currently only length and location fields are retrieved.
*/

   import java.util.Scanner;
   import java.io.FileInputStream;
   import java.util.NoSuchElementException;
   import java.io.FileNotFoundException;
   import java.lang.NumberFormatException;
   import java.io.File;
   import java.util.LinkedList;
   import java.util.ListIterator;
   
   public class LayoutParser {
      private static String                               filePath;
      private static String                               productName;
      private        LinkedList<LayoutRecordType>         recordTypeList = new LinkedList<LayoutRecordType>();
      private        String                               inputLine;
      private static LayoutFieldDescriptor                layoutFieldDescriptor;
      private static LayoutRecordType                     layoutRecordType = new LayoutRecordType();
      private static LayoutRecordType                     currentLayoutRecordType = new LayoutRecordType();;
      private final  Integer                              MINIMUM_DESCRIPTION_LENGTH = 15;
      private        ListIterator                         itrRecordTypeList; 
      private static Boolean                              firstType = true;
      private        Integer                              recordtypeLength;
      private        LayoutFieldDescriptor                lfd;
      private        FileChooser                fc;   
      /* Constructors */
      public LayoutParser(){}
      public LayoutParser( String product ){ productName = product; }
      
      /* 
         Functions
         
         Returns a LayoutRecordType contained in the recordTypeList with a 
         record type name equal to that passed as string argument.
      */
      public LayoutRecordType getLayout( String type ){
         //LayoutRecordType  lrtOut = new LayoutRecordType();
         
         // If there is only one record type there, see arb and fss product files,
         // return the type which may be the same as the product file type.
         if( recordTypeList.size() == 1 ){ 
            return layoutRecordType = recordTypeList.get( 0 );
         }
         
         for( int i = 0; i < recordTypeList.size(); i++ ){
            layoutRecordType = recordTypeList.get( i );
            if( type.equalsIgnoreCase( layoutRecordType.getRecordTypeName() ) ){
               break;
            }
         }
         return layoutRecordType;
      }
      
      public LinkedList<LayoutRecordType> getAllRecordTypes(){
         return recordTypeList;
      }
      
      public ListIterator iterRecordType( LayoutRecordType layoutRecType ){
         return layoutRecType.getIterator();
      }
      
      public ListIterator iterLayoutFieldDescriptor( LayoutRecordType layoutRecType ){
         return layoutRecType.getIterator();
      }
      
      // Return a list of field descrptors that data file parsers will use (overloaded)
      // Scanning must be complete before calling this method.
      public LinkedList<LayoutFieldDescriptor> getLayoutFieldDescriptorList( String layoutRecType ){
         LayoutRecordType lrt = new LayoutRecordType();
         LinkedList<LayoutFieldDescriptor> lfdList = new LinkedList<LayoutFieldDescriptor> ();
         
         for( int i =  0; i < recordTypeList.size(); i++ ){
            lrt = recordTypeList.get( i );
            if ( layoutRecType.equalsIgnoreCase( lrt.getRecordTypeName() ) ) {
               lfdList = lrt.getfieldDesriptorList();
            }
         }
         return lfdList;
      }
      
      // Return a list of field descrptors that data file parsers will use (overloaded)
      // Scanning must be complete before calling this method.
      public LinkedList<LayoutFieldDescriptor> getLayoutFieldDescriptorList( LayoutRecordType layoutRecType ){
         LinkedList<LayoutFieldDescriptor> lfdList = layoutRecType.getfieldDesriptorList();
         return lfdList;
      }
      
      private void resetParser(){
         recordTypeList.clear();
         filePath = "";
         firstType = true;
      }
      
      // takes filename in this format xxx_rf.txt, where xxx is product 
      public void scanFile( String filename, String filePath ){
         resetParser(); 
         // String workingDir = System.getProperty( "user.dir" );
         
         //fc = new FileChooser();
         //filePath = new String( filePath + File.separator + filename );

         filePath = new String ( 
            filePath + File.separator + "Layout_Data" + File.separator + filename );

         String rawInputLine; 
         /* 
            Create recordTypeList, populate recordTypeName for each layoutRecordType in the recordTypeList.
            Load record type names from Products enumeration.
         */
         setProductNameFromFilename( filename );
         makeLayoutRecords( getProductName() );
         
         itrRecordTypeList = recordTypeList.listIterator();
         currentLayoutRecordType = ( LayoutRecordType )itrRecordTypeList.next();
         // DEBUGGING line
         //System.out.printf("\nNow parsing type: %s", currentLayoutRecordType.getRecordTypeName() );
         
         // Read layout file line by line
         try {  
            Scanner lineScanner = new Scanner( new FileInputStream( filePath ) );
            
            // find first field descriptor
            while ( lineScanner.hasNextLine() ) {
               rawInputLine = new String( lineScanner.nextLine() );
               
               lfd = new LayoutFieldDescriptor( );
               if( lfd.isFieldDescriptor( rawInputLine ) ){
                  //layoutFieldDescriptor = parseFieldDescriptor( rawInputLine );
                  lfd.parseFieldDescriptor( rawInputLine );
                  // fss file has stray continuation fields that start with *
                  // look for first field with start of 0
                  if( lfd.getStart() != 0 ) { continue; }
                  currentLayoutRecordType.addFieldDescriptor( lfd );
                  //System.out.printf("\nFound first field{%d,%d}", lfd.getStart(), lfd.getEnd());
                  break;
               }
            }
            
            // get remaining field descriptors
            while( lineScanner.hasNextLine() ){
               rawInputLine = new String( lineScanner.nextLine() );
               LayoutFieldDescriptor lfd = new LayoutFieldDescriptor();
               
               // for fd line thats also not a blank field, parse it.
               if( lfd.isFieldDescriptor( rawInputLine ) ){
                  lfd.parseFieldDescriptor( rawInputLine );
                  //System.out.printf("\nlfd: {%d, %d}", lfd.getStart(), lfd.getEnd() );
                  // Get new lrt if start field = 0, exit if no more lrt
                  if( lfd.getStart() == 0 ){
                     if ( itrRecordTypeList.hasNext() ) { 
                        currentLayoutRecordType = ( LayoutRecordType )itrRecordTypeList.next();
                     } else {
                        break;
                     }
                  }
                  
                  // add field descriptor to list in layout record type
                  currentLayoutRecordType.addFieldDescriptor( lfd );
                  //currentLayoutRecordType.printFieldDescriptors();
               } 
            } // End while, scanning layout file complete
            
            // cleanup 
            lineScanner.close();
         } // End try
         catch ( FileNotFoundException e2 ) {
            e2.printStackTrace();
         }
         catch ( Exception ee ){
            ee.printStackTrace();
         }
      } // End scanFile(  String filename )
      
      // Initialize list recordTypeList using Product enumeration
      private void makeLayoutRecords( final String product ){
         LinkedList<String> recordList = new LinkedList<String>();
         // Get layout record types from enumeration Products
         recordList = Products.getRecordTypes( product );
        
         while( recordList.size() > 0 ){
            LayoutRecordType record = new LayoutRecordType( recordList.pop() );
            recordTypeList.add( record );
         }
      }
      
      private void setProductNameFromFilename( String filename ){
         int index = filename.indexOf( '_' );
         productName = filename.substring( 0, index );
         productName = productName.trim();
      }
      
      public String getProductName(){
         return productName;
      }
 
      /*
         Return an array of strings containing the record types for 
         this object.
         Call after scanning only.
      */
      public String[] getLayoutRecordTypeArray(){
         String output[] = new String[ recordTypeList.size() ];
         LayoutRecordType recordType = new LayoutRecordType();
         for ( int i = 0; i < recordTypeList.size(); i++ ){
            recordType = recordTypeList.get( i );
            output[ i ] = recordType.getRecordTypeName();
         }
         return output;
      }

      /*
         Return a LinkedList of strings containing the record types for 
         this object.
         Call after scanning only.
      */      
      public LinkedList<String> getLayoutRecordTypeList(){
         return Products.getRecordTypes( productName );
      }
      
      // The number of LayoutRecordTypes for this product.
      public int layoutRecordListSize(){
         return recordTypeList.size();
      }
      
      public int getRecordTypeLength(){
         LayoutRecordType recordType = new LayoutRecordType();
         
         if ( recordTypeList.size() == 0 ) { 
            System.out.printf( "\nIn LayoutParser recordTypeList.size() == 0\n" );
            return 0; 
         }

         recordType = recordTypeList.peekFirst();
         return recordType.getRecordTypeLength();
      }
      
      public void printLayoutRecordTypes(){
         LayoutRecordType recordType = new LayoutRecordType();
         for ( int i = 0; i < recordTypeList.size(); i++ ){
            recordType = recordTypeList.get( i );
            System.out.printf( "\n record type: %s", recordType.getRecordTypeName() );
            recordType.printFieldDescriptors();  
         } 
      }
      /*
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
      */
   } // End class LayoutParser
   