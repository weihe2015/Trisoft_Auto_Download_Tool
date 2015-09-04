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

                       
<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->
 
<!ENTITY % esri_arcpyfunction      "esri_arcpyfunction">
<!ENTITY % esri_arcpyfunbody      "esri_arcpyfunbody">

<!ENTITY % esri_summary          "esri_summary">

<!ENTITY % esri_funname      "esri_funname">

<!ENTITY % esri_returnval      "esri_returnval" >

<!ENTITY % esri_retvaltable      "esri_retvaltable" >

<!ENTITY % esri_retvalhd      "esri_retvalhd" >
<!ENTITY % esri_retvaldatatypehd      "esri_retvaldatatypehd" >
<!ENTITY % esri_retvalinfohd      "esri_retvalinfohd" >

<!ENTITY % esri_retvalrow      "esri_retvalrow" >
<!ENTITY % esri_retvaldatatype      "esri_retvaldatatype" >
<!ENTITY % esri_retvalinfo      "esri_retvalinfo" >

<!ENTITY % esri_arguments      "esri_arguments" >
<!ENTITY % esri_argument      "esri_argument" >

<!ENTITY % esri_argtable      "esri_argtable" >

<!ENTITY % esri_arghd      "esri_arghd" >
<!ENTITY % esri_argnamehd      "esri_argnamehd" >
<!ENTITY % esri_argdatatypehd      "esri_argdatatypehd" >
<!ENTITY % esri_arginfohd      "esri_arginfohd" >
<!ENTITY % esri_argdefaultvalhd      "esri_argdefaultvalhd" >
<!ENTITY % esri_argexprhd      "esri_argexprhd" >

<!ENTITY % esri_argrow      "esri_argrow" >
<!ENTITY % esri_argname      "esri_argname" >
<!ENTITY % esri_argdatatype      "esri_argdatatype" >
<!ENTITY % esri_arginfo      "esri_arginfo" >
<!ENTITY % esri_argdefaultval      "esri_argdefaultval" >
<!ENTITY % esri_argexpression      "esri_argexpression" >

<!--
<!ENTITY % esri_arcpyfuncretval-atts
            'esri_returnValueIsList  (yes | no)    "no"
             esri_returnType    %esri_returntype-vals;  #REQUIRED    ' >

<!ENTITY % esri_arcpyfuncargval-atts
            'esri_argumentIsList  (yes | no)    "no"
             esri_isOptional (yes | no) #REQUIRED
             esri_argumentType    %esri_argtype-vals;  #REQUIRED    ' >
-->
<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->

<!ENTITY included-domains "">


<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!--                    LONG NAME: esri_arcpy Function                        -->
<!ELEMENT esri_arcpyfunction  ((%esri_funname;), (%shortdesc;), (%esri_prolog;),(%esri_arcpyfunbody;), 
                                                                (%esri_authornotes;)?,(%esri_arcpyfunction-info-types;)* ) >
 
<!ATTLIST esri_arcpyfunction            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                          id ID #REQUIRED
                          conref CDATA #IMPLIED
                         %select-atts;
                         %localization-atts;
                         %arch-atts;
                          outputclass CDATA #IMPLIED
                          domains CDATA "&included-domains;">
                          

<!ELEMENT esri_funname      (#PCDATA)                            >
<!ATTLIST esri_funname         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_arcpyfunbody       ((%esri_summary;), (%esri_arguments;), (%esri_returnval;)?, (%esri_discussion;), (%esri_codesamples;))                 >
<!ATTLIST esri_arcpyfunbody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %id-atts;
             %localization-atts;
             base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass 
                        CDATA                            #IMPLIED    >

<!ELEMENT esri_summary     (%esri_section.notitle.cnt;)*   >
<!ATTLIST     esri_summary        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >

<!ELEMENT esri_returnval     ((%esri_retvaltable;), (%esri_desc;)?)   >
<!ATTLIST esri_returnval        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED >

<!ELEMENT esri_retvaltable      ((%esri_retvalhd;), (%esri_retvalrow;))                            >
<!ATTLIST esri_retvaltable         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                            #IMPLIED
             keycol     NMTOKEN                          "1"
             refcols    NMTOKENS                         #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_retvalhd        ((%esri_retvaldatatypehd;), (%esri_retvalinfohd;))              >
<!ATTLIST esri_retvalhd         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_retvaldatatypehd    (#PCDATA)                             >
<!ATTLIST esri_retvaldatatypehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_retvalinfohd    (#PCDATA)                             >
<!ATTLIST esri_retvalinfohd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_retvalrow        ((%esri_retvaldatatype;), (%esri_retvalinfo;))              >
<!ATTLIST esri_retvalrow         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_retvaldatatype    (#PCDATA)                             >
<!ATTLIST esri_retvaldatatype     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    
             esri_datatype %esri_arcpytype-vals;     #REQUIRED>

<!ELEMENT esri_retvalinfo    (#PCDATA)                             >
<!ATTLIST esri_retvalinfo     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    
             esri_propertyIsList  (yes | no)     "no"
             >

<!ELEMENT esri_arguments    (%esri_argument;)*                             >
<!ATTLIST esri_arguments     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_argument    ((%esri_argtable;), (%esri_desc;))                             >
<!ATTLIST esri_argument     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_argtable       ((%esri_arghd;), (%esri_argrow;))             >
<!ATTLIST esri_argtable         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                           #IMPLIED
             keycol     NMTOKEN                         #IMPLIED
             refcols    NMTOKENS                        #IMPLIED
             spectitle  CDATA                           #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_arghd      ((%esri_argnamehd;), (%esri_argdatatypehd;),  (%esri_arginfohd;), (%esri_argdefaultvalhd;), (%esri_argexprhd;))                            >
<!ATTLIST esri_arghd       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_argnamehd    (#PCDATA)                             >
<!ATTLIST esri_argnamehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_argdatatypehd    (#PCDATA)                           >
<!ATTLIST esri_argdatatypehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_arginfohd    (#PCDATA)                             >
<!ATTLIST esri_arginfohd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_argdefaultvalhd    (#PCDATA)                             >
<!ATTLIST esri_argdefaultvalhd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >


<!ELEMENT esri_argexprhd    (#PCDATA)                             >
<!ATTLIST esri_argexprhd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_argrow       ((%esri_argname;), (%esri_argdatatype;),(%esri_arginfo;), (%esri_argdefaultval;), (%esri_argexpression;))                            >
<!ATTLIST esri_argrow         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >


<!ELEMENT esri_argname      ( #PCDATA)                            >
<!ATTLIST esri_argname         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_argdatatype        ( #PCDATA)                            >
<!ATTLIST esri_argdatatype         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED  
             esri_datatype %esri_arcpytype-vals;     #REQUIRED >

<!ELEMENT esri_arginfo       (#PCDATA)                            >
<!ATTLIST esri_arginfo         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    
             esri_propertyIsList  (yes | no)     "no"
             esri_isOptional (yes|no) "no">

<!ELEMENT esri_argdefaultval       (#PCDATA)                            >
<!ATTLIST esri_argdefaultval         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_argexpression      (#PCDATA)                           >
<!ATTLIST esri_argexpression         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_arcpyfunction      %global-atts;     class  CDATA "- topic/topic  esri_arcpyfunction/esri_arcpyfunction ">
<!ATTLIST esri_arcpyfunbody     %global-atts;      class  CDATA "- topic/body  esri_arcpyfunction/esri_arcpyfunbody ">

<!ATTLIST esri_funname        %global-atts;   class  CDATA "- topic/title  esri_arcpyfunction/esri_funname ">

<!ATTLIST esri_summary           %global-atts;                        class  CDATA "- topic/ph  esri_arcpyfunction/esri_summary ">

<!ATTLIST esri_returnval          %global-atts; class  CDATA "- topic/section  esri_arcpyfunction/esri_returnval ">

<!ATTLIST esri_retvaltable    %global-atts;      class  CDATA "- topic/simpletable  esri_arcpyfunction/esri_retvaltable ">

<!ATTLIST esri_retvalhd      %global-atts;   class  CDATA "- topic/sthead  esri_arcpyfunction/esri_retvalhd ">
<!ATTLIST esri_retvaldatatypehd       %global-atts;   class  CDATA "- topic/stentry  esri_arcpyfunction/esri_retvaldatatypehd ">
<!ATTLIST esri_retvalinfohd         %global-atts; class  CDATA "- topic/stentry  esri_arcpyfunction/esri_retvalinfohd ">

<!ATTLIST esri_retvalrow         %global-atts;  class  CDATA "- topic/strow  esri_arcpyfunction/esri_retvalrow ">
<!ATTLIST esri_retvaldatatype       %global-atts;   class  CDATA "- topic/stentry  esri_arcpyfunction/esri_retvaldatatype ">
<!ATTLIST esri_retvalinfo         %global-atts; class  CDATA "- topic/stentry  esri_arcpyfunction/esri_retvalinfo ">

<!ATTLIST esri_arguments          %global-atts; class  CDATA "- topic/section  esri_arcpyfunction/esri_arguments ">
<!ATTLIST esri_argument          %global-atts; class  CDATA "- topic/section  esri_arcpyfunction/esri_argument ">


<!ATTLIST esri_argtable    %global-atts;      class  CDATA "- topic/simpletable  esri_arcpyfunction/esri_argtable ">

<!ATTLIST esri_arghd      %global-atts;   class  CDATA "- topic/sthead  esri_arcpyfunction/esri_arghd ">
<!ATTLIST esri_argnamehd       %global-atts;   class  CDATA "- topic/stentry  esri_arcpyfunction/esri_argnamehd ">
<!ATTLIST esri_argdatatypehd         %global-atts; class  CDATA "- topic/stentry  esri_arcpyfunction/esri_argdatatypehd ">
<!ATTLIST esri_arginfohd        %global-atts;  class  CDATA "- topic/stentry  esri_arcpyfunction/esri_arginfohd ">
<!ATTLIST esri_argdefaultvalhd   %global-atts;    class  CDATA "- topic/stentry  esri_arcpyfunction/esri_argdefaultvalhd ">
<!ATTLIST esri_argexprhd  %global-atts;    class  CDATA "- topic/stentry  esri_arcpyfunction/esri_argexprhd ">

<!ATTLIST esri_argrow         %global-atts;  class  CDATA "- topic/strow  esri_arcpyfunction/esri_argrow ">
<!ATTLIST esri_argname        %global-atts;    class  CDATA "- topic/stentry  esri_arcpyfunction/esri_argname ">
<!ATTLIST esri_argdatatype           %global-atts;  class  CDATA "- topic/stentry  esri_arcpyfunction/esri_argdatatype ">
<!ATTLIST esri_arginfo         %global-atts;   class  CDATA "- topic/stentry  esri_arcpyfunction/esri_arginfo ">
<!ATTLIST esri_argdefaultval      %global-atts;    class  CDATA "- topic/stentry  esri_arcpyfunction/esri_argdefaultval ">
<!ATTLIST esri_argexpression     %global-atts;   class  CDATA "- topic/stentry  esri_arcpyfunction/esri_argexpression ">

<!-- ================== End DITA Concept  ======================== -->




