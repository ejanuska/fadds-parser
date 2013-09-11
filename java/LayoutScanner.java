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

public class LayoutScanner{

   public static void main( String args[] ) {
      LayoutParser parser = new LayoutParser();
      
      String filename = ( String )args[ 0 ];
      //System.out.printf( "\nfilename: %s\n", filename );
     
      //System.out.printf( "\nProductNameFromFilename(filename): %s\n", ProductNameFromFilename( filename ) );
      parser.scanFile( filename );
      
      // SEE MultipleLayoutTestScanner.java for version that scans all layout files 
      // included in Products.java
      
   }
   
   private static String ProductNameFromFilename( String filenameArg ){
         int index = filenameArg.indexOf( '_' );
         String productName = new String();
         productName = filenameArg.substring( 0, index );
         productName = productName.trim();
         return productName;
   }
}