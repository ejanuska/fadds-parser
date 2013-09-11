/*
   LayoutRecordType.java
   Created 2/23/13
   Edward Januska
   
     Used to parse FADDS layout files.
     LayoutRecordType objects are used to hold a list of field descriptors 
   of type LayoutFieldDescriptor. The record type in this class refers to the 
   different types of records that are contained in a FADDS data file. The 
   types of record particular to a product data file are outlined in layout files. 
     See FADDS data and layout files for more information pertaining to particular 
   data files.
     Current iterator supports iteration over the list of LayoutFieldDescriptors
     in member layoutFieldDescriptorList. 
   
*/
   import java.util.Scanner;
   import java.io.FileInputStream;
   import java.util.NoSuchElementException;
   import java.io.FileNotFoundException;
   import java.io.File;
   import java.util.LinkedList;
   import java.util.ListIterator;
   
   public class LayoutRecordType {
      
      private String                                recordTypeName;
      private LinkedList<LayoutFieldDescriptor>     layoutFieldDescriptorList = new LinkedList<LayoutFieldDescriptor>();
      private LayoutFieldDescriptor                 layoutFieldDescriptor;
      
      /* Functions */
      /* Constructor */
      public LayoutRecordType(){
         recordTypeName = "";
      }
      
      public ListIterator getIterator(){
         ListIterator iterFldDescList =  layoutFieldDescriptorList.listIterator();
         return iterFldDescList;
      }
      
      public LayoutRecordType( String typename ){
         recordTypeName = typename;
      }
      
      public Integer getRecordTypeLength(){
         return recordTypeName.length();
      }
      
      public void addFieldDescriptor( LayoutFieldDescriptor fieldDesc ){
         /*
            Add a field to the list of fields layoutFieldDescriptorList
         */
         //System.out.printf("fieldDesc start: %s, fieldDesc end: %s\n", fieldDesc.getStart(), fieldDesc.getEnd() );
         layoutFieldDescriptorList.addLast( fieldDesc );
      }
      
      public void setRecordTypeName( String typeName ){
         // The name of the type of record RWY, ILS1, etc.
         recordTypeName = typeName;
      }
      
      public String getRecordTypeName(){
         return recordTypeName;
      }
      
      public LinkedList<LayoutFieldDescriptor> getfieldDesriptorList( ) {
         return layoutFieldDescriptorList;
      }
      
      public void printFieldDescriptors(){
         ListIterator iterFDL =  layoutFieldDescriptorList.listIterator();
         System.out.printf("\n");
         while( iterFDL.hasNext() ){
            layoutFieldDescriptor = (LayoutFieldDescriptor)iterFDL.next();
            System.out.printf( "{%d, %d} ", layoutFieldDescriptor.getStart(), layoutFieldDescriptor.getEnd() ); 
         }
         System.out.printf("\n");
      }
      
      
   } // End class LayoutRecordType
   
   
 // End package com.januskadesign.fadds