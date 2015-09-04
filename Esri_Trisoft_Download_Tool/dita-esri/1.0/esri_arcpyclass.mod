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
 
  <!--                      Content elements common to map and topic -->


<!ENTITY % esri_arcpyclass              "esri_arcpyclass">
<!ENTITY % esri_arcpyclassbody      "esri_arcpyclassbody">

<!ENTITY % esri_classname              "esri_classname">

<!ENTITY % esri_summary          "esri_summary">

<!-- tchen: not sure why I need to do this -->
<!ENTITY % esri_image     "esri_image">
<!ENTITY % esri_caption     "esri_caption">

<!ENTITY % esri_classillustration     "esri_classillustration">


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
<!ELEMENT esri_arcpyclass  ((%esri_classname;), (%shortdesc;), (%esri_prolog;),(%esri_arcpyclassbody;), 
                                                                (%esri_authornotes;)?,(%esri_arcpyclass-info-types;)* ) >
 
<!ATTLIST esri_arcpyclass            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                          id ID #REQUIRED
                          conref CDATA #IMPLIED
                         %select-atts;
                         %localization-atts;
                         %arch-atts;
                          outputclass CDATA #IMPLIED
                          domains CDATA "&included-domains;">
                          

<!ELEMENT esri_classname      (#PCDATA)                            >
<!ATTLIST esri_classname         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_arcpyclassbody       ((%esri_summary;), (%esri_discussion;), (%esri_classillustration;)?, (%esri_codesamples;)?)                 >
<!ATTLIST esri_arcpyclassbody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %id-atts;
             %localization-atts;
             base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass 
                        CDATA                            #IMPLIED    >

<!ELEMENT esri_classillustration         ((%esri_image;)+, (%esri_caption;)?)                                    >
<!ATTLIST esri_classillustration           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  >

<!ELEMENT esri_summary     (%esri_section.notitle.cnt;)*   >
<!ATTLIST     esri_summary        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_arcpyclass      %global-atts;     class  CDATA "- topic/topic  esri_arcpyfunction/esri_arcpyclass ">
<!ATTLIST esri_arcpyclassbody     %global-atts;      class  CDATA "- topic/body  esri_arcpyfunction/esri_arcpyclassbody ">

<!ATTLIST esri_classname        %global-atts;   class  CDATA "- topic/title  esri_arcpyfunction/esri_classname ">

<!ATTLIST esri_summary           %global-atts;                        class  CDATA "- topic/ph  esri_arcpyclass/esri_summary ">

<!ATTLIST esri_classillustration    %global-atts;                  class  CDATA "- topic/fig  esri_arcpyclass/esri_classillustration ">


<!-- ================== End DITA Concept  ======================== -->




