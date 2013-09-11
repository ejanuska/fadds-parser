//package com.januskadesign.fadds;

import java.util.LinkedList;
// Record Type enumerations for each product  
public  enum   Products{

   aff( "aff", "AFF1", "AFF2", "AFF3", "AFF4", "", "", "", "", ""),
   anr( "anr", "ANR1", "ANR2", "", "", "", "", "", "", ""),
   apt( "apt", "APT", "ATT", "RWY", "ARS", "RMK", "", "", "", ""),
   arb( "arb", "ARB", "", "", "", "", "", "", "", ""),
   ats( "ats", "ATS1", "ATS2", "ATS3", "ATS4", "ATS5", "RMK", "", "", ""),
   awos( "awos", "AWOS1", "AWOS2", "", "", "", "", "", "", ""),
   awy( "awy", "AWY1", "AWY2", "AWY3", "AWY4", "AWY5", "RMK", "", "", ""),
   com( "com", "COM", "", "", "", "", "", "", "", ""),
   fix( "fix", "FIX1", "FIX2", "FIX3", "FIX4", "FIX5", "", "", "", ""),
   fss( "fss", "FSS", "", "", "", "", "", "", "", ""),
   harfix( "harfix", "HARFIX", "", "", "", "", "", "", "", ""),
   hpf( "hpf", "HP1", "HP2", "HP3", "HP4", "", "", "", "", ""),
   ils( "ils", "ILS1", "ILS2", "ILS3", "ILS4", "ILS5", "ILS6", "", "", ""),
   lid( "lid", "1", "2", "3", "", "", "", "", "", ""),
   mtr( "mtr", "MTR1", "MTR2", "MTR3", "MTR4", "MTR5", "", "", "", ""),
   natfix( "natfix", "NATFIX", "", "", "", "", "", "", "", ""),
   nav( "nav", "NAV1", "NAV2", "NAV3", "NAV4", "NAV5", "NAV6", "", "", ""),
   pfr( "pfr", "PFR1", "PFR2", "", "", "", "", "", "", ""),
   pja( "pja", "PJA1", "PJA2", "PJA3", "PJA4", "PJA5", "", "", "", ""),
   ssd( "ssd", "SSD", "", "", "", "", "", "", "", ""),
   stardp( "stardp", "STARDP", "", "", "", "", "", "", "", ""),
   twr( "twr", "TWR1", "TWR2", "TWR3", "TWR4", "TWR5", "TWR6", "TWR7", "TWR8", "TWR9"),
   wxl( "wxl", "WXL", "", "", "", "", "", "", "", "");   
   
   private final String field0;
   private final String field1;
   private final String field2;
   private final String field3;
   private final String field4;
   private final String field5;
   private final String field6;
   private final String field7;
   private final String field8;
   private final String field9;

   Products( String in0, String in1, String in2, String in3, String in4, String in5, String in6, String in7, String in8, String in9 ){
      field0 = in0;
      field1 = in1;
      field2 = in2;
      field3 = in3;
      field4 = in4;
      field5 = in5;
      field6 = in6;
      field7 = in7;
      field8 = in8;
      field9 = in9;
   }
   
   public String getProductName(){
      return field0;
   }
   public String getFieldName(){
      return field0;
   }
   public String getField0(){
      return field0;
   }
   
   public String getField1(){
      return field1;
   }
   
   public String getField2(){
      return field2;
   }
   
   public String getField3(){
      return field3;
   }
   
    public String getField4(){
      return field4;
   }
   
   public String getField5(){
      return field5;
   }
   
   public String getField6(){
      return field6;
   }
   
   public String getField7(){
      return field7;
   }
   
   public String getField8(){
      return field8;
   }
   
   public String getField9(){
      return field9;
   }
   
   // Returns a list of record types for the product passed in.
   public static LinkedList<String> getRecordTypes( String parserType ){
      final Integer MAXFIELDCOUNT = 10;
      LinkedList<String> fieldList = new LinkedList<String>();
      //System.out.printf("\nIn enum getRecordTypes...\n" );
      //System.out.printf("parserType : |%s|\n", parserType );
    
      for( Products i : Products.values() ){
         if ( parserType.equalsIgnoreCase( i.toString() ) ){
            fieldList.add( i.getField1() );
            if ( i.getField2() != "" ) fieldList.add( i.getField2() );
            if ( i.getField3() != "" ) fieldList.add( i.getField3() );
            if ( i.getField4() != "" ) fieldList.add( i.getField4() );
            if ( i.getField5() != "" ) fieldList.add( i.getField5() );
            if ( i.getField6() != "" ) fieldList.add( i.getField6() );
            if ( i.getField7() != "" ) fieldList.add( i.getField7() );
            if ( i.getField8() != "" ) fieldList.add( i.getField8() );
            if ( i.getField9() != "" ) fieldList.add( i.getField9() );
            break;
         }
      }
      //System.out.printf("\nfieldList.size(): %s\n", fieldList.size() );
      //System.out.printf("\nReturning fieldList.size...\n");
      return fieldList;
   }
   
}