<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA API Reference                                -->
<!--  VERSION:   1.1                                               -->
<!--  DATE:      August 2007                                       -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identfier or an 
      appropriate system identifier 
PUBLIC "-//Trisoft//ELEMENTS DITA Apiref//EN"
      Delivered as file "apiref.mod"                              -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for Api Reference                      -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             March 2001                                        -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2005, 2006.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--  UPDATES:                                                     -->
<!--    2007.08.07 DaveD: Converting ApiRef DITA 1.0 to 1.1        -->
<!--    2007.08.07 DaveD: Allowing reusable objects on elements    -->
<!--                 knownissues and knownissue                    -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- default namespace prefix for DITAArchVersion attribute can be
     overridden through predefinition in the document type shell   -->
<!ENTITY % DITAArchNSPrefix
                       "ditaarch"                                    >

<!-- must be instanced on each topic type                          -->
<!ENTITY % arch-atts "
             xmlns:%DITAArchNSPrefix; 
                        CDATA                              #FIXED
                       'http://dita.oasis-open.org/architecture/2005/'
             %DITAArchNSPrefix;:DITAArchVersion
                        CDATA                              '1.1'"    >


<!-- ============================================================= -->
<!--                   SPECIALIZATION OF DECLARED ELEMENTS         -->
<!-- ============================================================= -->


<!ENTITY % apiref-info-types 
                      "%info-types;"                                 >

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->


<!ENTITY % apiref                 "apiref"                                >
<!ENTITY % apifunction            "apifunction"                           >
<!ENTITY % classname              "classname"                             >
<!ENTITY % classversion           "classversion"                          >
<!ENTITY % functionname           "functionname"                          >
<!ENTITY % apidesc                "apidesc"                               >
<!ENTITY % paramlist              "paramlist"                             >
<!ENTITY % paramStringIn          "paramStringIn"                         >
<!ENTITY % paramStringOut         "paramStringOut"                        >
<!ENTITY % paramStringInOut       "paramStringInOut"                      >
<!ENTITY % paramLongIn            "paramLongIn"                           >
<!ENTITY % paramLongOut           "paramLongOut"                          >
<!ENTITY % paramLongInOut         "paramLongInOut"                        >
<!ENTITY % paramIntegerIn         "paramIntegerIn"                        >
<!ENTITY % paramIntegerOut        "paramIntegerOut"                       >
<!ENTITY % paramIntegerInOut      "paramIntegerInOut"                     >
<!ENTITY % paramBooleanIn         "paramBooleanIn"                        >
<!ENTITY % paramBooleanOut        "paramBooleanOut"                       >
<!ENTITY % paramBooleanInOut      "paramBooleanInOut"                     >
<!ENTITY % paramEnumIn            "paramEnumIn"                           >
<!ENTITY % paramEnumOut           "paramEnumOut"                          >
<!ENTITY % paramEnumInOut         "paramEnumInOut"                        >
<!ENTITY % paramBlobIn            "paramBlobIn"                           >
<!ENTITY % paramBlobOut           "paramBlobOut"                          >
<!ENTITY % paramBlobInOut         "paramBlobInOut"                        >
<!ENTITY % paramStringArrayIn     "paramStringArrayIn"                    >
<!ENTITY % paramStringArrayOut    "paramStringArrayOut"                   >
<!ENTITY % paramStringArrayInOut  "paramStringArrayInOut"                 >
<!ENTITY % paramLongArrayIn     	"paramLongArrayIn"                    	>
<!ENTITY % paramLongArrayOut    	"paramLongArrayOut"                   	>
<!ENTITY % paramLongArrayInOut  	"paramLongArrayInOut"                 	>
<!ENTITY % paramName              "paramName"                             >
<!ENTITY % paramDesc              "paramDesc"                             >
<!ENTITY % paramEnumName          "paramEnumName"                         >
<!ENTITY % remarks                "remarks"                               >
<!ENTITY % knownissues            "knownissues"                           >
<!ENTITY % purpose                "purpose"                               >
<!--                              
<!ENTITY % apiExample             "apiExample"                            >
-->                               
<!ENTITY % history                "history"                               >
<!ENTITY % since                  "since"                                 >
<!ENTITY % deprecated             "deprecated"                            >
<!ENTITY % knownissue             "knownissue"                            >
<!ENTITY % limitation             "limitation"                            >
<!ENTITY % workaround             "workaround"                            >

<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->


<!ENTITY included-domains ""                                         >


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!--                    LONG NAME:  Api Reference                  -->
<!ELEMENT apiref     (%apifunction;, %apidesc;)                      >
<!ATTLIST apiref
             id         ID                               #REQUIRED
             conref     CDATA                            #IMPLIED
             ishlabelxpath CDATA #FIXED "./apifunction"
             %select-atts;
             %localization-atts;
             %arch-atts;
             outputclass 
                        CDATA                            #IMPLIED
             domains    CDATA                "&included-domains;"    >


<!--                    LONG NAME: Api Function                    -->
<!ELEMENT apifunction       (%classname; , %classversion; , 
                             (%functionname;)? )                     >
<!ATTLIST apifunction         
             %id-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Class Name                      -->
<!ELEMENT classname       (%ph.cnt;)*                                >
<!ATTLIST classname         
             keyref     CDATA                           #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Class Version                   -->
<!ELEMENT classversion       (%ph.cnt;)*                             >
<!ATTLIST classversion         
             keyref     CDATA                           #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Function Name                   -->
<!ELEMENT functionname       (%ph.cnt;)*                             >
<!ATTLIST functionname         
             keyref     CDATA                           #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: API Description                 -->
<!ELEMENT apidesc       (%purpose;, (%paramlist;)?, (%remarks;)?, 
                        (%knownissues;)?, (%history;)?, 
                        (%example;)* )                            >
<!ATTLIST apidesc         
             %id-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %localization-atts;
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Parameter List                  -->
<!ELEMENT paramlist    ((%paramStringIn; | %paramStringOut; | 
                         %paramStringInOut; | %paramIntegerIn; | 
                         %paramIntegerOut; | %paramIntegerInOut; |                          
                         %paramBooleanIn; | %paramBooleanOut; | 
                         %paramBooleanInOut; | %paramEnumIn; | 
                         %paramEnumOut; | %paramEnumInOut; | 
                         %paramBlobIn; | %paramBlobOut; | 
                         %paramBlobInOut; | %paramLongIn; |
                         %paramLongOut; | %paramLongInOut; |
                         %paramStringArrayIn; | %paramStringArrayOut; |
                         %paramStringArrayInOut; |
                         %paramLongArrayIn; | %paramLongArrayOut; |
                         %paramLongArrayInOut;)+)                        >
<!ATTLIST paramlist      
             relcolwidth 
                        CDATA                           #IMPLIED
             keycol     NMTOKEN                         #IMPLIED
             refcols    NMTOKENS                        #IMPLIED
             spectitle  CDATA                           #IMPLIED
             %display-atts;
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: String In Parameter             -->
<!ELEMENT paramStringIn      (%paramName;, %paramDesc;)              >
<!ATTLIST paramStringIn       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: String Out Parameter            -->
<!ELEMENT paramStringOut     (%paramName;, %paramDesc;)              >
<!ATTLIST paramStringOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >             

<!--                    LONG NAME: String In/Out Parameter         -->
<!ELEMENT paramStringInOut   (%paramName;, %paramDesc;)              >
<!ATTLIST paramStringInOut     
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    > 

<!--                    LONG NAME: Long In Parameter             -->
<!ELEMENT paramLongIn      (%paramName;, %paramDesc;)              >
<!ATTLIST paramLongIn       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Long Out Parameter            -->
<!ELEMENT paramLongOut     (%paramName;, %paramDesc;)              >
<!ATTLIST paramLongOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >             

<!--                    LONG NAME: Long In/Out Parameter         -->
<!ELEMENT paramLongInOut   (%paramName;, %paramDesc;)              >
<!ATTLIST paramLongInOut     
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    > 

<!--                    LONG NAME: Integer In Parameter            -->
<!ELEMENT paramIntegerIn      (%paramName;, %paramDesc;)             >
<!ATTLIST paramIntegerIn       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Integer Out Parameter           -->
<!ELEMENT paramIntegerOut     (%paramName;, %paramDesc;)             >
<!ATTLIST paramIntegerOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >             

<!--                    LONG NAME: Integer In/Out Parameter        -->
<!ELEMENT paramIntegerInOut   (%paramName;, %paramDesc;)             >
<!ATTLIST paramIntegerInOut     
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >
                        
<!--                    LONG NAME: Boolean In Parameter            -->
<!ELEMENT paramBooleanIn      (%paramName;, %paramDesc;)             >
<!ATTLIST paramBooleanIn       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Boolean Out Parameter           -->
<!ELEMENT paramBooleanOut     (%paramName;, %paramDesc;)             >
<!ATTLIST paramBooleanOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >             

<!--                    LONG NAME: Boolean In/Out Parameter        -->
<!ELEMENT paramBooleanInOut   (%paramName;, %paramDesc;)             >
<!ATTLIST paramBooleanInOut     
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >
                        
<!--                    LONG NAME: Binary data In Parameter        -->
<!ELEMENT paramBlobIn         (%paramName;, %paramDesc;)             >
<!ATTLIST paramBlobIn       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Binary data Out Parameter       -->
<!ELEMENT paramBlobOut        (%paramName;, %paramDesc;)             >
<!ATTLIST paramBlobOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >             

<!--                    LONG NAME: Binary data In/Out Parameter    -->
<!ELEMENT paramBlobInOut   (%paramName;, %paramDesc;)                >
<!ATTLIST paramBlobInOut     
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >                         
                        
<!--                    LONG NAME: Enumeration In Parameter        -->
<!ELEMENT paramEnumIn         (%paramEnumName;, %paramName;, 
                              %paramDesc;)                           >
<!ATTLIST paramEnumIn       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Enumeration Out Parameter       -->
<!ELEMENT paramEnumOut         (%paramEnumName;, %paramName;, 
                              %paramDesc;)                           >
<!ATTLIST paramEnumOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >
                                                
<!--                    LONG NAME: Enumeration In/Out Parameter    -->                        
<!ELEMENT paramEnumInOut         (%paramEnumName;, %paramName;, 
                              %paramDesc;)                           >
<!ATTLIST paramEnumInOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >                        

 <!--                    LONG NAME: Parameter Enumeration name     -->
<!ELEMENT paramEnumName      (%ph.cnt;)*                             >
<!ATTLIST paramEnumName       
             specentry  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Parameter Name                  -->
<!ELEMENT paramName     (%ph.cnt;)*                                  >
<!ATTLIST paramName      
             specentry  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Parameter Description           -->
<!ELEMENT paramDesc      (%desc.cnt;)*                               >
<!ATTLIST paramDesc        
             specentry  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: StringArray In Parameter        -->
<!ELEMENT paramStringArrayIn (%paramName;, %paramDesc;)              >
<!ATTLIST paramStringArrayIn  
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: StringArray Out Parameter       -->
<!ELEMENT paramStringArrayOut (%paramName;, %paramDesc;)             >
<!ATTLIST paramStringArrayOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >             

<!--                    LONG NAME: StringArray In/Out Parameter    -->
<!ELEMENT paramStringArrayInOut   (%paramName;, %paramDesc;)         >
<!ATTLIST paramStringArrayInOut     
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    > 
<!--                    LONG NAME: LongArray In Parameter        -->
<!ELEMENT paramLongArrayIn (%paramName;, %paramDesc;)              >
<!ATTLIST paramLongArrayIn  
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: LongArray Out Parameter       -->
<!ELEMENT paramLongArrayOut (%paramName;, %paramDesc;)             >
<!ATTLIST paramLongArrayOut       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >             

<!--                    LONG NAME: LongArray In/Out Parameter    -->
<!ELEMENT paramLongArrayInOut   (%paramName;, %paramDesc;)         >
<!ATTLIST paramLongArrayInOut     
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    > 
                        
<!--                    LONG NAME: Purpose                         -->
<!ELEMENT purpose       (%section.cnt;)*                             >
<!ATTLIST purpose         
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >
 
<!--                    LONG NAME: Remarks                         -->
<!ELEMENT remarks       (%section.cnt;)*                             >
<!ATTLIST remarks         
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >
                     
                        
<!--                    LONG NAME: Known issues                    -->
<!ELEMENT knownissues            (%knownissue;)+                     >
<!ATTLIST knownissues            
             compact    (yes | no)                       #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    
             %ish-reusableobject-atts;                               >
                        
<!--                    LONG NAME: Known issue                     -->
<!ELEMENT knownissue    ((%limitation;), (%workaround;)? )*          >
<!ATTLIST knownissue             
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    
             %ish-reusableobject-atts;                               >

<!--                    LONG NAME: Limitation                      -->
<!ELEMENT limitation     (%itemgroup.cnt;)*                          >
<!ATTLIST limitation       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >
                        
<!--                    LONG NAME: Workaround                      -->
<!ELEMENT workaround     (%itemgroup.cnt;)*                          >
<!ATTLIST workaround       
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >
                                                
<!--                    LONG NAME: History                         -->
<!ELEMENT history       ((%since;)?, (%deprecated;)?)                >
<!ATTLIST history         
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Since Version                   -->
<!ELEMENT since         (%ph.cnt;)*                                  >
<!ATTLIST since      
             specentry  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >

<!--                    LONG NAME: Deprecated in Version           -->
<!ELEMENT deprecated         (%ph.cnt;)*                             >
<!ATTLIST deprecated      
             specentry  CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             outputclass 
                        CDATA                            #IMPLIED    >


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!ATTLIST apiref                 %global-atts;   class  CDATA "- topic/topic         apiref/apiref"                  >
                                                                                                                     
<!ATTLIST apifunction            %global-atts;   class  CDATA "- topic/title         apiref/apifunction "            >
<!ATTLIST classname              %global-atts;   class  CDATA "- topic/ph            apiref/classname "              >
<!ATTLIST classversion           %global-atts;   class  CDATA "- topic/ph            apiref/classversion  "          >
<!ATTLIST functionname           %global-atts;   class  CDATA "- topic/ph            apiref/functionname "           >
                                                                                                                     
<!ATTLIST apidesc                %global-atts;   class  CDATA "- topic/body          apiref/apidesc "                >
<!ATTLIST paramlist              %global-atts;   class  CDATA "- topic/simpletable   apiref/paramlist "              >
                                                                                                                     
<!ATTLIST paramLongIn            %global-atts;   class  CDATA "- topic/strow         apiref/paramLongIn "            >
<!ATTLIST paramLongOut           %global-atts;   class  CDATA "- topic/strow         apiref/paramLongOut "           >
<!ATTLIST paramLongInOut         %global-atts;   class  CDATA "- topic/strow         apiref/paramLongInOut "         >
<!ATTLIST paramStringIn          %global-atts;   class  CDATA "- topic/strow         apiref/paramStringIn "          >
<!ATTLIST paramStringOut         %global-atts;   class  CDATA "- topic/strow         apiref/paramStringOut "         >
<!ATTLIST paramStringInOut       %global-atts;   class  CDATA "- topic/strow         apiref/paramStringInOut "       >
<!ATTLIST paramIntegerIn         %global-atts;   class  CDATA "- topic/strow         apiref/paramIntegerIn "         >
<!ATTLIST paramIntegerOut        %global-atts;   class  CDATA "- topic/strow         apiref/paramIntegerOut "        >
<!ATTLIST paramIntegerInOut      %global-atts;   class  CDATA "- topic/strow         apiref/paramIntegerInOut "      >
<!ATTLIST paramBooleanIn         %global-atts;   class  CDATA "- topic/strow         apiref/paramBooleanIn "         >
<!ATTLIST paramBooleanOut        %global-atts;   class  CDATA "- topic/strow         apiref/paramBooleanOut "        >
<!ATTLIST paramBooleanInOut      %global-atts;   class  CDATA "- topic/strow         apiref/paramBooleanInOut "      >
<!ATTLIST paramEnumIn            %global-atts;   class  CDATA "- topic/strow         apiref/paramEnumIn "            >
<!ATTLIST paramEnumOut           %global-atts;   class  CDATA "- topic/strow         apiref/paramEnumOut "           >
<!ATTLIST paramEnumInOut         %global-atts;   class  CDATA "- topic/strow         apiref/paramEnumInOut "         >
<!ATTLIST paramBlobIn            %global-atts;   class  CDATA "- topic/strow         apiref/paramBlobIn "            >
<!ATTLIST paramBlobOut           %global-atts;   class  CDATA "- topic/strow         apiref/paramBlobOut "           >
<!ATTLIST paramBlobInOut         %global-atts;   class  CDATA "- topic/strow         apiref/paramBlobInOut "         >
<!ATTLIST paramStringArrayIn     %global-atts;   class  CDATA "- topic/strow         apiref/paramStringArrayIn "     >
<!ATTLIST paramStringArrayOut    %global-atts;   class  CDATA "- topic/strow         apiref/paramStringArrayOut "    >
<!ATTLIST paramStringArrayInOut  %global-atts;   class  CDATA "- topic/strow         apiref/paramStringArrayInOut "  >
<!ATTLIST paramLongArrayIn     	 %global-atts;   class  CDATA "- topic/strow         apiref/paramLongArrayIn "     	 >
<!ATTLIST paramLongArrayOut    	 %global-atts;   class  CDATA "- topic/strow         apiref/paramLongArrayOut "      >
<!ATTLIST paramLongArrayInOut    %global-atts;   class  CDATA "- topic/strow         apiref/paramLongArrayInOut "    >
<!ATTLIST paramName              %global-atts;   class  CDATA "- topic/stentry       apiref/paramName "              >
<!ATTLIST paramDesc              %global-atts;   class  CDATA "- topic/stentry       apiref/paramDesc "              >
<!ATTLIST paramEnumName          %global-atts;   class  CDATA "- topic/stentry       apiref/paramEnumName "          >
                                                                                                                     
<!ATTLIST purpose                %global-atts;   class  CDATA "- topic/section       apiref/purpose "                >
<!ATTLIST remarks                %global-atts;   class  CDATA "- topic/section       apiref/remarks "                >
<!ATTLIST knownissues            %global-atts;   class  CDATA "- topic/ul            apiref/knownissues "            >
<!ATTLIST knownissue             %global-atts;   class  CDATA "- topic/li            apiref/knownissue "             >
<!ATTLIST history                %global-atts;   class  CDATA "- topic/section       apiref/history "                >
<!ATTLIST since                  %global-atts;   class  CDATA "- topic/ph            apiref/since "                  >
<!ATTLIST deprecated             %global-atts;   class  CDATA "- topic/ph            apiref/deprecated "             >
<!ATTLIST limitation             %global-atts;   class  CDATA "- topic/itemgroup     apiref/limitation "             >
<!ATTLIST workaround             %global-atts;   class  CDATA "- topic/itemgroup     apiref/workaround"              >

 
<!-- ================== End DITA API Reference  ======================= -->



<!ENTITY % history           "history"                               >
<!ENTITY % since             "since"                                 >
<!ENTITY % deprecated        "deprecated"                            >
<!ENTITY % knownissue        "knownissue"                            >
<!ENTITY % limitation        "limitation"                            >
<!ENTITY % workaround        "workaround"                            >