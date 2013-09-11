/*
   LayoutScanner.java
   Created 2/23/13
   Edward Januska
   
   Used to start parsing of FADDS layout files.
*/
//package com.januskadesign.fadds;

import java.util.Scanner;
import java.io.FileInputStream;
import java.util.NoSuchElementException;
import java.io.FileNotFoundException;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.ListIterator;

public class LayoutTestScanner{

   public static void main( String args[] ) {
      LayoutParser parser = new LayoutParser();
      
      String filename = (String)args[ 0 ];
      parser.scanFile( filename );
      
      System.out.printf( "LayoutScanner, parser.getProductName() : %s\n", parser.getProductName() );
      
      LayoutRecordType testLRT = new LayoutRecordType();
      testLRT = parser.getLayout( "apt" );
      
      LinkedList<LayoutFieldDescriptor> testLfdList = new LinkedList<LayoutFieldDescriptor>();
      LayoutFieldDescriptor lfd = new LayoutFieldDescriptor();
      
      testLfdList = testLRT.getfieldDesriptorList();
      
      //ListIterator itrDesriptorList = testLfdList.listIterator();
      ListIterator itrDesriptorList = testLRT.getIterator();
      
      while ( itrDesriptorList.hasNext() ){
         lfd = (LayoutFieldDescriptor) itrDesriptorList.next();
         System.out.printf("{ %d, %d } ", lfd.getStart(), lfd.getLength() );
      }
      
      // Test LayoutRecordType.getLayoutRecordTypeArray()
      System.out.printf( "\n  Testing getLayoutRecordTypeArray() " );
      String[] lrtArray = parser.getLayoutRecordTypeArray();
      for ( int i = 0; i < parser.layoutRecordListSize(); i++){
         System.out.printf( "\n LayoutScanner, lrtArray[%d] = %s", i, lrtArray[i] );
      }
      
      // Test operation of local iterator
      System.out.printf( "\n  Testing getLayoutRecordTypeList() " );
      LinkedList<String> lrtList = parser.getLayoutRecordTypeList();
      LinkedList<LayoutFieldDescriptor> lfdList = new LinkedList<LayoutFieldDescriptor>();
      for ( int i = 0; i < lrtList.size(); i++){
         System.out.printf( "\n LayoutScanner, lrtList item %d = %s", i, lrtList.get( i ) );
         lfdList = parser.getLayoutFieldDescriptorList( lrtList.get( i ) );
         System.out.printf( ",    lfdList count = %d",  lfdList.size() );
      }
     
      /* 
         Test LayoutRecordType.iterRecordType( LayoutRecordType layoutRecType )
         Which calls LayoutRecordType.getIterator()
      */
      System.out.printf( "\n Testing LayoutRecordType.iterRecordType( LayoutRecordType layoutRecType )\n");
      ListIterator itrDesriptorList2 = parser.iterLayoutFieldDescriptor( testLRT );
      Integer j = 0;
      LayoutFieldDescriptor lfd2 = new LayoutFieldDescriptor();
      while( itrDesriptorList2.hasNext() ){
         j++;
         lfd2 = ( LayoutFieldDescriptor )itrDesriptorList2.next();
         System.out.printf("{ %d, %d } ", lfd2.getStart(), lfd2.getLength() );
         if ( j > 3 ){
            j = 0;
            System.out.printf("\n");
         }
      }
      j = 0;
      
      System.out.printf( "\n Testing parser.getLayoutFieldDescriptorList( String layoutRecType )\n");
      testLfdList = parser.getLayoutFieldDescriptorList( testLRT.getRecordTypeName() );
      itrDesriptorList2 = testLfdList.listIterator();
      while( itrDesriptorList2.hasNext() ){
         j++;
         lfd2 = ( LayoutFieldDescriptor )itrDesriptorList2.next();
         System.out.printf("{ %d, %d, %d } ", lfd2.getStart(), lfd2.getLength(), lfd2.getEnd() );
         if ( j > 3 ){
            j = 0;
            System.out.printf("\n");
         }
      }
      
      System.out.printf( "\n Testing parser.getLayoutFieldDescriptorList( LayoutRecordType )\n");
      testLfdList = parser.getLayoutFieldDescriptorList( testLRT );
      itrDesriptorList2 = testLfdList.listIterator();
      while( itrDesriptorList2.hasNext() ){
         j++;
         lfd2 = ( LayoutFieldDescriptor )itrDesriptorList2.next();
         System.out.printf("{ %d, %d, %d } ", lfd2.getStart(), lfd2.getLength(), lfd2.getEnd() );
         if ( j > 3 ){
            j = 0;
            System.out.printf("\n");
         }
      }
   }
   
   private static String ProductNameFromFilename( String fileNameArg ){
         int index = fileNameArg.indexOf( '_' );
         String productName = new String();
         productName = fileNameArg.substring( 0, index );
         productName = productName.trim();
         return productName;
   }
}