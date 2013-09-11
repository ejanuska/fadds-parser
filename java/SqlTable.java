/*
   SqlTable.java
   Created 3/22/13
   Edward Januska
   
   Create rough versions of mySQL create table DDL.
   
*/

   import java.io.FileInputStream;
   import java.util.NoSuchElementException;
   import java.io.FileNotFoundException;
   import java.io.File;
   import java.util.LinkedList;
   import java.util.ListIterator;
   import java.io.BufferedWriter;
   import java.io.FileWriter;
   import java.io.IOException;
   
   public class SqlTable {
      LayoutParser layout = new LayoutParser();
      StringBuilder outputSB = new StringBuilder();
      
      public SqlTable(){}
      
      public SqlTable( LayoutParser lo ){
         layout = lo;
      }
      
      public void createTables(){
         
         String key = new String ( " (\nrecID           INT         NOT NULL    PRIMARY KEY    AUTO_INCREMENT" );
         LinkedList<LayoutFieldDescriptor> lfds;
         LinkedList<LayoutRecordType> lrts = new LinkedList<LayoutRecordType>();
         
         lrts = layout.getAllRecordTypes();
         LayoutFieldDescriptor lfd  = new LayoutFieldDescriptor( );
         
         System.out.printf("\nIn createTables()...");

         for( LayoutRecordType lrt : lrts ){
            outputSB = new StringBuilder();
            // to create this section where XXX is the product and YYY is the rec type:
            // CREATE TABLE XXX_YYY 
            outputSB.append( "\n\n# Create table for " 
                           + layout.getProductName() 
                           + "_"
                           + lrt.getRecordTypeName() );
            outputSB.append( "\nCREATE TABLE " );
            outputSB.append( layout.getProductName() 
                           + "_" 
                           + lrt.getRecordTypeName() );
            // opening paren is in 'key' variable
            outputSB.append( key );
         
            lfds = new LinkedList<LayoutFieldDescriptor>();
            lfds = lrt.getfieldDesriptorList( );
            ListIterator iter = lrt.getIterator();
            
            // skip record type indicator
            lfd = ( LayoutFieldDescriptor ) iter.next();
            
            // start adding fields to the DDL
            while( iter.hasNext() ){
               //lfd = new LayoutFieldDescriptor( );
               lfd = ( LayoutFieldDescriptor ) iter.next();
               outputSB.append( ",\n" 
                                + lfd.getFieldText() 
                                + "\tVARCHAR ("
                                + lfd.getLength()
                                + ")" );
            }
            
            // End of table creation, add the rest of its syntax
            outputSB.append( ");\n" );
            // for testing / debugging
            System.out.printf( outputSB.toString() );
            
            // write to file
            writeToFile( outputSB.toString(), lrt );
         }
      }
      
      public void createInserts(){
         
         // Create ddl like this for all tables
         // DROP TABLE IF EXISTS PRD_REC;
         LinkedList<String> lrtList;
         for ( Products prod : Products.values() ){
            lrtList =  new LinkedList<String>(); 
            lrtList = prod.getRecordTypes( prod.getProductName() );
            for( String rec : lrtList ) {
               writeInsertsToFile( prod.getProductName(), rec );
            }
         }
      }
      
      public void writeInsertsToFile( String prod, String lrt ){
         String preText = "\nLOAD DATA LOCAL INFILE '";
         String intoTable = "' INTO TABLE ";
         String terminate = "\nFIELDS TERMINATED BY '|'\nLINES TERMINATED BY '\\n';";
         
         String outputFilePath = new String();
         StringBuilder sb = new StringBuilder();
         // Where the files are written
         // current directory\fadds\delimited_data\PRODUCT NAME\RECORD TYPE NAME.psv
         outputFilePath = 
              System.getProperty( "user.dir" ) + 
              File.separator + 
              "queries" +
              File.separator +
              "createTableInsetsFaddsDatabase.sql";
         
         sb.append( preText );
         // add filename of .psv file for servers
         //sb.append( "data/" + prod.toLowerCase() + "/" + lrt.toUpperCase() + ".psv" );
         // add filename of .psv file for localhost
         sb.append( "C:/Documents and Settings/Edward Januska/My Documents/My Projects/fadds-parser/delimited_data/" + prod.toLowerCase() + "/" + lrt.toUpperCase() + ".psv" );
         

         // add "INTO TABLE"
         sb.append( intoTable );
         // add table name
         sb.append( prod.toLowerCase() + "_" + lrt.toLowerCase() + "s" );
         // add the rest
         sb.append( terminate );
         try {
			   File file = new File( outputFilePath );
            
            // If file doesnt exist, create it
            if ( !file.exists() ) { file.createNewFile(); }
            
            // Append ddl to the file
            FileWriter fw = new FileWriter( file.getAbsoluteFile(), true );
			   BufferedWriter bw = new BufferedWriter( fw );
            
            // Write to the file
				bw.write( sb.toString() );
            
			   // close writers/files
		      bw.close();
            
         } catch (IOException e) {
			   e.printStackTrace();
		   } // End try catch block   
      } // End writeToFile
      
       public void createDrops(){
         
         // Create ddl like this for all tables
         // DROP TABLE IF EXISTS PRD_REC;
         LinkedList<String> lrtList;
         for ( Products prod : Products.values() ){
            lrtList =  new LinkedList<String>(); 
            lrtList = prod.getRecordTypes( prod.getProductName() );
            for( String rec : lrtList ) {
               writeDropsToFile( prod.getProductName(), rec );
            }
         }
      
      }
      
      public void writeDropsToFile( String prod, String lrt ){
         String preText = "\nDROP TABLE IF EXISTS ";
         String outputFilePath = new String();
         StringBuilder sb = new StringBuilder();
         // Where the files are written
         // current directory\fadds\delimited_data\PRODUCT NAME\RECORD TYPE NAME.psv
         outputFilePath = 
              System.getProperty( "user.dir" ) + 
              File.separator + 
              "queries" +
              File.separator +
              "createTableDropsFaddsDatabase.sql";
         
         sb.append( preText );
         sb.append( prod.toLowerCase() + "_" + lrt.toLowerCase() + "s;" );
         try {
			   File file = new File( outputFilePath );
            
            // If file doesnt exist, create it
            if ( !file.exists() ) { file.createNewFile(); }
            
            // Append ddl to the file
            FileWriter fw = new FileWriter( file.getAbsoluteFile(), true );
			   BufferedWriter bw = new BufferedWriter( fw );
            
            // Write to the file
				bw.write( sb.toString() );
            
			   // close writers/files
		      bw.close();
            
         } catch (IOException e) {
			   e.printStackTrace();
		   } // End try catch block   
      } // End writeToFile
      
      public void writeToFile( String sql, LayoutRecordType lrt ){
         String outputFilePath = new String();
         // Where the files are written
         // current directory\fadds\delimited_data\PRODUCT NAME\RECORD TYPE NAME.psv
         outputFilePath = 
              System.getProperty( "user.dir" ) + 
              File.separator + 
              "queries" +
              File.separator +
              "createRawFaddsDatabase.sql";

         System.out.printf("\nwriteToFile path: " + outputFilePath);
         try {
			   File file = new File( outputFilePath );
            // delete old file
            //if ( file.exists() ) { file.delete(); }
            
            // If file doesnt exist, create it
            if ( !file.exists() ) { file.createNewFile(); }
            
            // Append ddl to the file
            FileWriter fw = new FileWriter( file.getAbsoluteFile(), true );
			   BufferedWriter bw = new BufferedWriter( fw );
            
            // Write to the file
				bw.write( sql );
            
			   // close writers/files
		      bw.close();
            
         } catch (IOException e) {
			   e.printStackTrace();
		   } // End try catch block   
      } // End writeToFile
   
   } // End class SqlTable