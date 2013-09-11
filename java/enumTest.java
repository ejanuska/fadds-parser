
import java.util.LinkedList;
   
public class enumTest{

   public static void main( String args[] ) {
      LinkedList<String> test = new LinkedList<String>();

      Integer x = 0;
      for( Products i : Products.values() ){
         //test[x] = i.toString();
         //System.out.printf( "%s\t%s\n", i, i.getField6()  );
         System.out.printf( "%s\n", i   );
         
         
      }
      
      System.out.printf( "\nLinkedList \n\n");
      
      String rt = new String();
      rt = "ils";       
      test = Products.getRecordTypes( rt );
      
      for ( int n = 0; n < test.size(); n++ ){
         System.out.printf( "%s\n", test.get( n )  );
      }
      
   }
}