<!-- ============================================================= -->
<!--                    ELEMENT NAME ENTITIES                      -->
<!-- ============================================================= -->

<!ENTITY % esri_apicommondefs   PUBLIC 
"-//ESRI//ENTITIES DITA API Common//EN"
"esri_apicommon.ent"                          >
%esri_apicommondefs;

<!-- ============================================================= -->
<!--                    COMMON ENTITY SETS                        -->
<!-- ============================================================= -->
<!ENTITY % esri_codeblock    "esri_codeblock"                     >
<!ENTITY % esri_desc              "esri_desc" >
<!ENTITY % esri_discussion      "esri_discussion" >

<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->

<!ENTITY % esri_codesamplestype-atts
            'esri_codesamplestype  (python)    "python"    ' >

             
<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ELEMENT esri_deprecatedat     (#PCDATA)   >
<!ATTLIST     esri_deprecatedat        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >


<!--                    LONG NAME: Choice Table                    -->
<!ELEMENT esri_enumtable   ((%esri_enumhead;), (%esri_enumrow;)+ )                   >
<!ATTLIST esri_enumtable     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                            #IMPLIED
             keycol     NMTOKEN                          "1"
             refcols    NMTOKENS                         #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Head                     -->
<!ELEMENT esri_enumhead        ((%esri_enumvaluehd;), (%esri_enumdeschd;) )              >
<!ATTLIST esri_enumhead         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Option Head              -->
<!ELEMENT esri_enumvaluehd    (#PCDATA)                             >
<!ATTLIST esri_enumvaluehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Description Head         -->
<!ELEMENT esri_enumdeschd      (#PCDATA)                             >
<!ATTLIST esri_enumdeschd      
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!--                    LONG NAME: Choice Row                      -->
<!ELEMENT esri_enumrow         ((%esri_enumvalue;), (%esri_enumdesc;) )                  >
<!ATTLIST esri_enumrow        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Option                   -->
<!ELEMENT esri_enumvalue      (#PCDATA)>
<!ATTLIST esri_enumvalue        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Description              -->
<!ELEMENT esri_enumdesc        (%esri_tblcell.cnt;)*>
<!ATTLIST esri_enumdesc                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Label Table                    -->
<!ELEMENT esri_enumlabeltable   ((%esri_enumlabelhead;), (%esri_enumlabelrow;)+ )                   >
<!ATTLIST esri_enumlabeltable     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                            #IMPLIED
             keycol     NMTOKEN                          "1"
             refcols    NMTOKENS                         #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Label Head                     -->
<!ELEMENT esri_enumlabelhead        ((%esri_enumlabelnamehd;), (%esri_enumlabelvaluehd;), (%esri_enumlabelimagehd;) )              >
<!ATTLIST esri_enumlabelhead         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Label name Head              -->
<!ELEMENT esri_enumlabelnamehd    (#PCDATA)                             >
<!ATTLIST esri_enumlabelnamehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!--                    LONG NAME: Choice Label image Head              -->
<!ELEMENT esri_enumlabelimagehd    (#PCDATA)                             >
<!ATTLIST esri_enumlabelimagehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Label value Head         -->
<!ELEMENT esri_enumlabelvaluehd      (#PCDATA)                             >
<!ATTLIST esri_enumlabelvaluehd      
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!--                    LONG NAME: Choice Label Row                      -->
<!ELEMENT esri_enumlabelrow         ((%esri_enumlabelname;), (%esri_enumlabelvalue;), (%esri_enumlabelimage;) )                  >
<!ATTLIST esri_enumlabelrow        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Label name                   -->
<!ELEMENT esri_enumlabelname      (#PCDATA)>
<!ATTLIST esri_enumlabelname        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Label image              -->
<!ELEMENT esri_enumlabelimage        (%esri_tblcell.cnt;)*>
<!ATTLIST esri_enumlabelimage                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!--                    LONG NAME: Choice Label value              -->
<!ELEMENT esri_enumlabelvalue        (%esri_tblcell.cnt;)*>
<!ATTLIST esri_enumlabelvalue                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >



<!-- esri_codesamples -->

<!ELEMENT esri_codesamples       (%esri_codeblock;)*                           >
<!ATTLIST esri_codesamples         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
            %esri_codesamplestype-atts;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_desc       (%esri_section.notitle.cnt; | %esri_enumtable; )*                            >
<!ATTLIST esri_desc         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_discussion       (%esri_section.notitle.cnt;)*                            >
<!ATTLIST esri_discussion         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED    >


<!-- ============================================================= -->
<!--                    BASIC DOCUMENT ELEMENT DECLARATIONS        -->
<!--                    (rich text)                                -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   BASE FORM PHRASE TYPES                      -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_deprecatedat %global-atts;  class  CDATA "- topic/othermeta esri_apicommon/esri_deprecatedat ">

<!ATTLIST esri_enumtable %global-atts;  class  CDATA "- topic/simpletable esri_apicommon/esri_enumtable ">
<!ATTLIST esri_enumhead      %global-atts;  class  CDATA "- topic/sthead esri_apicommon/esri_enumhead "     >
<!ATTLIST esri_enumvaluehd  %global-atts;  class  CDATA "- topic/stentry esri_apicommon/esri_enumvaluehd ">
<!ATTLIST esri_enumdeschd    %global-atts;  class  CDATA "- topic/stentry  esri_apicommon/esri_enumdeschd "  >
<!ATTLIST esri_enumrow       %global-atts;  class  CDATA "- topic/strow  esri_apicommon/esri_enumrow "       >
<!ATTLIST esri_enumvalue    %global-atts;  class  CDATA "- topic/stentry esri_apicommon/esri_enumvalue "  >
<!ATTLIST esri_enumdesc      %global-atts;  class  CDATA "- topic/stentry esri_apicommon/esri_enumdesc "    >

<!ATTLIST esri_enumlabeltable %global-atts;  class  CDATA "- topic/simpletable esri_apicommon/esri_enumlabeltable ">
<!ATTLIST esri_enumlabelhead      %global-atts;  class  CDATA "- topic/sthead esri_apicommon/esri_enumlabelhead "     >
<!ATTLIST esri_enumlabelnamehd  %global-atts;  class  CDATA "- topic/stentry esri_apicommon/esri_enumlabelnamehd ">
<!ATTLIST esri_enumlabelimagehd  %global-atts;  class  CDATA "- topic/stentry esri_apicommon/esri_enumlabelimagehd ">
<!ATTLIST esri_enumlabelvaluehd    %global-atts;  class  CDATA "- topic/stentry  esri_apicommon/esri_enumlabelvaluehd "  >
<!ATTLIST esri_enumlabelrow       %global-atts;  class  CDATA "- topic/strow  esri_apicommon/esri_enumlabelrow "       >
<!ATTLIST esri_enumlabelname    %global-atts;  class  CDATA "- topic/stentry esri_apicommon/esri_enumlabelname "  >
<!ATTLIST esri_enumlabelimage    %global-atts;  class  CDATA "- topic/stentry esri_apicommon/esri_enumlabelimage "  >
<!ATTLIST esri_enumlabelvalue      %global-atts;  class  CDATA "- topic/stentry esri_apicommon/esri_enumlabelvalue "    >

<!ATTLIST esri_codesamples           %global-atts;           class  CDATA "- topic/section esri_apicommon/esri_codesamples ">

<!ATTLIST esri_desc                   %global-atts;     class  CDATA "- topic/section  esri_apicommon/esri_desc ">
<!ATTLIST esri_discussion       %global-atts;     class  CDATA "- topic/section  esri_apicommon/esri_discussion ">

<!-- ================== End Common Elements Module  ============== -->
