import java.util.Scanner;
import java.io.FileInputStream;
import java.util.NoSuchElementException;
import java.io.FileNotFoundException;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.ListIterator;

public class FaddsDataScanner{

    public static void main( String args[] ) {
      LayoutParser layout = new LayoutParser();
      String filnameSuffix = "_rf.txt";
      String faddsPath;
      FileChooser    fc;
      //layout.scanFile( "fss" + filnameSuffix );
      //SqlTable st = new SqlTable( layout );
      //st.createInserts();

      fc = new FileChooser();
      faddsPath = new String( fc.getFaddsDir( "Select FADDS data folder") );
      System.out.printf("\nFaddsDataDelimiter faddsPath: " + faddsPath + "\n");

        
      for ( Products prod : Products.values() ) 
      {
         System.out.printf( "\nNow scanning layout for " + prod.getFieldName() + "_rf.txt\n" );
         layout.scanFile( prod.getFieldName() + filnameSuffix, faddsPath );
         LinkedList<String> lrtList = layout.getLayoutRecordTypeList();
         
               
         //System.out.printf("\nNow delimiting product %s", prod.getFieldName() );
         
       //  if ( prod.getFieldName().compareToIgnoreCase( "aff" ) == 0 ){
          //  FaddsDataDelimiter fdd = new FaddsDataDelimiter( layout, faddsPath );
          //  fdd.scanDataFile();
            //break;
        // }
      }
   } // End main
   
} // End class FaddsDataScanner
