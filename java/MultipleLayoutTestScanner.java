/*
   MultipleLayoutScanner.java
   Created 2/23/13
   Edward Januska
   
   Used to test parsing of FADDS layout files consecutivly.
   For every product in Products.java a file name is created
     for that layout file. The file is scanned and results parsed.
     The layout results are in the LayoutParser object.
   
   
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

public class MultipleLayoutTestScanner{

   public static void main( String args[] ) {
      LayoutParser layout = new LayoutParser();
      String filnameSuffix = "_rf.txt";
      
      for ( Products prod : Products.values() ) 
      {
         
         System.out.printf( "\nNow scanning layout for" + prod.getFieldName() + "_rf.txt\n" );
         layout.scanFile( prod.getFieldName() + filnameSuffix );
         LinkedList<String> lrtList = layout.getLayoutRecordTypeList();
         for ( String str : lrtList ){
            System.out.printf("\nRecord Type: %s", str );  
         }
         System.out.printf("\n***Layout Scanning Complete for %s***\n", prod.getFieldName() );   
         
      }
      
      

   } // End main
   
} // End class