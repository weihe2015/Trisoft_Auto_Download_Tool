<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

  
<!ENTITY % esri_menucascade       "esri_menucascade"                                   >
<!ENTITY % esri_shortcut       "esri_shortcut"                                   >
<!ENTITY % esri_uicontrol       "esri_uicontrol"                                   >
<!ENTITY % esri_usertext        "esri_usertext"                                    >
<!ENTITY % esri_wintitle        "esri_wintitle"                                    >

<!ENTITY % esri_codeph        "esri_codeph"                                    >
<!ENTITY % esri_fieldname     "esri_fieldname"                                    >
<!ENTITY % esri_path          "esri_path"                                    >


<!-- ============================================================= -->
<!--                    UI KEYWORD TYPES ELEMENT DECLARATIONS      -->
<!-- ============================================================= -->


<!ELEMENT esri_uicontrol     (%esri_words.cnt; | %esri_image; )*       >
<!ATTLIST esri_uicontrol       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    
             esri_uitype       (checkbox | dropdown | radiobutton | tab |   textbox |  -dita-use-conref-target )        #IMPLIED >
                

<!ELEMENT esri_wintitle      (#PCDATA)                                    >
<!ATTLIST esri_wintitle        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >



<!ELEMENT esri_menucascade   (%esri_uicontrol; | %esri_shortcut;)+                               >
<!ATTLIST esri_menucascade     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!ELEMENT esri_shortcut      (#PCDATA)                                    >
<!ATTLIST esri_shortcut        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >

<!ELEMENT esri_usertext     (%esri_words.cnt;)*                                    >
<!ATTLIST esri_usertext        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >

<!ELEMENT esri_codeph     (%esri_words.cnt; | %xref;)*                                    >
<!ATTLIST esri_codeph        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
              outputclass 
                        CDATA                            #IMPLIED    >


<!ELEMENT esri_fieldname     (%esri_words.cnt;)*                                    >
<!ATTLIST esri_fieldname        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
              outputclass 
                        CDATA                            #IMPLIED    >

<!ELEMENT esri_path     (%esri_words.cnt;)*                                    >
<!ATTLIST esri_path        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
              outputclass 
                        CDATA                            #IMPLIED    >


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->
             

<!ATTLIST esri_uicontrol   %global-atts;  class CDATA "+ topic/ph ui-d/uicontrol esri_ui-d/esri_uicontrol "    >
<!ATTLIST esri_wintitle    %global-atts;  class CDATA "+ topic/keyword ui-d/wintitle esri_ui-d/esri_wintitle ">
<!ATTLIST esri_menucascade   %global-atts;  class CDATA "+ topic/ph ui-d/menucascade esri_ui-d/esri_menucascade "    >
<!ATTLIST esri_shortcut    %global-atts;  class CDATA "+ topic/keyword ui-d/shortcut esri_ui-d/esri_shortcut ">

<!ATTLIST esri_usertext    %global-atts;  class CDATA "+ topic/ph sw-d/userinput esri_ui-d/esri_usertext ">

<!ATTLIST esri_codeph    %global-atts;  class CDATA "+ topic/ph sw-d/userinput esri_ui-d/esri_codeph ">
<!ATTLIST esri_fieldname    %global-atts;  class CDATA "+ topic/ph sw-d/userinput esri_ui-d/esri_fieldname ">
<!ATTLIST esri_path    %global-atts;  class CDATA "+ topic/ph sw-d/userinput esri_ui-d/esri_path ">


<!-- ================== End DITA User Interface Domain =========== -->
