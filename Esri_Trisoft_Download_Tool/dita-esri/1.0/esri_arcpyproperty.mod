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
 
 

<!ENTITY % esri_arcpyproperties      "esri_arcpyproperties">

<!ENTITY % esri_arcpyproperty      "esri_arcpyproperty">

<!ENTITY  % esri_proptable    "esri_proptable" >

<!ENTITY  % esri_prophead   "esri_prophead" >
<!ENTITY  % esri_propnamehd       "esri_propnamehd" >
<!ENTITY  % esri_propinfohd       "esri_propinfohd" >
<!ENTITY  % esri_propdatatypehd       "esri_propdatatypehd" >

<!ENTITY  % esri_proprow      "esri_proprow" >
<!ENTITY  % esri_propname       "esri_propname" >
<!ENTITY  % esri_propinfo       "esri_propinfo" >
<!ENTITY  % esri_propdatatype       "esri_propdatatype" >


<!ENTITY % esri_summary          "esri_summary">


<!ENTITY % esri_arcpyproperties-info-types "%info-types;" >

                                                
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

<!ELEMENT esri_arcpyproperties  ((%title;), (%shortdesc;), (%esri_prolog;),(%esri_summary;)*, 
										(%esri_arcpyproperty;)*, (%esri_codesamples;)*,
                                        (%esri_authornotes;)?, (%esri_arcpyproperties-info-types;)* ) >
 
<!ATTLIST     esri_arcpyproperties            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                          id ID #REQUIRED
                          conref CDATA #IMPLIED
                         %select-atts;
                         %localization-atts;
                         %arch-atts;
                          outputclass CDATA #IMPLIED
                          domains CDATA "&included-domains;">

<!ELEMENT esri_summary     (%esri_section.notitle.cnt;)*   >
<!ATTLIST     esri_summary        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >


<!ELEMENT esri_arcpyproperty  ((%esri_proptable;), (%esri_enumtable;)?, (%esri_desc;), (%esri_codesamples;)? ) >
<!ATTLIST esri_arcpyproperty             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_proptable      ((%esri_prophead;), (%esri_proprow;))                            >
<!ATTLIST esri_proptable         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                            #IMPLIED
             keycol     NMTOKEN                          "1"
             refcols    NMTOKENS                         #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_prophead        ((%esri_propnamehd;),(%esri_propdatatypehd;), (%esri_propinfohd;))              >
<!ATTLIST esri_prophead         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_propnamehd    (#PCDATA)                             >
<!ATTLIST esri_propnamehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_propdatatypehd    (#PCDATA)                             >
<!ATTLIST esri_propdatatypehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_propinfohd    (#PCDATA)                             >
<!ATTLIST esri_propinfohd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_proprow        ((%esri_propname;), (%esri_propdatatype;), (%esri_propinfo;))              >
<!ATTLIST esri_proprow         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_propname    (#PCDATA)                             >
<!ATTLIST esri_propname     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_propdatatype    (#PCDATA)                             >
<!ATTLIST esri_propdatatype     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    
             esri_datatype %esri_arcpytype-vals;     #REQUIRED >

<!ELEMENT esri_propinfo    (#PCDATA)                             >
<!ATTLIST esri_propinfo     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;
             outputclass     CDATA                            #IMPLIED
             esri_propertyIsList  (yes | no)     "no"
             esri_direction (ReadWrite | ReadOnly)    #REQUIRED     >



<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_arcpyproperties    %global-atts;     class  CDATA "- topic/topic  esri_arcpyproperty/esri_arcpyproperties ">

<!ATTLIST esri_arcpyproperty        %global-atts;     class  CDATA "- topic/section  esri_arcpyproperty/esri_arcpyproperty ">

<!ATTLIST esri_summary           %global-atts;       class  CDATA "- topic/ph  esri_arcpyproperty/esri_summary ">

<!ATTLIST esri_proptable                %global-atts;     class  CDATA "- topic/simpletable  esri_arcpyproperty/esri_proptable ">

<!ATTLIST esri_prophead                %global-atts;     class  CDATA "- topic/sthead  esri_arcpyproperty/esri_prophead ">
<!ATTLIST esri_propnamehd           %global-atts;     class  CDATA "- topic/stentry  esri_arcpyproperty/esri_propnamehd ">
<!ATTLIST esri_propinfohd               %global-atts;     class  CDATA "- topic/stentry  esri_arcpyproperty/esri_propinfohd ">
<!ATTLIST esri_propdatatypehd       %global-atts;     class  CDATA "- topic/stentry  esri_arcpyproperty/esri_propdatatypehd ">

<!ATTLIST esri_proprow                    %global-atts;     class  CDATA "- topic/strow  esri_arcpyproperty/esri_proprow ">
<!ATTLIST esri_propname                %global-atts;     class  CDATA "- topic/stentry  esri_arcpyproperty/esri_propname ">
<!ATTLIST esri_propinfo                    %global-atts;     class  CDATA "- topic/stentry  esri_arcpyproperty/esri_propinfo ">
<!ATTLIST esri_propdatatype            %global-atts;     class  CDATA "- topic/stentry  esri_arcpyproperty/esri_propdatatype ">


<!-- ================== End DITA Concept  ======================== -->




