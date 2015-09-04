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
<!--
<!ENTITY % esri_common      PUBLIC 
"-//ESRI//ELEMENTS DITA AHCommon//EN" "esri_common.mod"   >
%esri_common;
-->

<!ENTITY % esri_workflow                    "esri_workflow">

<!ENTITY % esri_workflowheader      "esri_workflowheader">
<!ENTITY % esri_workflowgoal           "esri_workflowgoal">
<!ENTITY % esri_workflowcomplexity                 "esri_workflowcomplexity">
<!ENTITY % esri_workflowdatarequirement      "esri_workflowdatarequirement">
<!ENTITY % esri_workflowdatapath      "esri_workflowdatapath">

<!ENTITY % esri_workflowbody        "esri_workflowbody">

<!ENTITY % esri_mcdata          "esri_mcdata" >

<!ENTITY % esri_section1        "esri_section1" >
<!ENTITY % esri_section2        "esri_section2" >
<!ENTITY % esri_section3        "esri_section3" >

<!ENTITY % esri_workflowsteps       "esri_workflowsteps">

<!ENTITY % esri_workflowsummary     "esri_workflowsummary">


<!-- ============================================================= -->
<!--                    SHARED ATTRIBUTE LISTS                     -->
<!-- ============================================================= -->

<!ENTITY % esri_workflow-info-types "%info-types;" >


<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->

<!ENTITY included-domains "">

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!ELEMENT esri_workflow     ((%title;),(%titlealts;)?,(%shortdesc;), (%esri_prolog;)?, (%esri_workflowheader;) ,(%esri_workflowbody;), 
                                                        (%esri_authornotes;)?, (%esri_workflow-info-types;)*)  >
<!ATTLIST esri_workflow             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                          id     ID     #REQUIRED
                         conref     CDATA     #IMPLIED
                         %select-atts;
                         %localization-atts;
                         %arch-atts;
                          outputclass     CDATA     #IMPLIED
                          domains     CDATA     "&included-domains;">


<!ELEMENT esri_workflowheader     ((%esri_workflowcomplexity;), (%esri_workflowdatarequirement;), (%esri_workflowdatapath;), (%esri_workflowgoal;))  >
<!ATTLIST esri_workflowheader         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;    
			 esri_fauxworkflow		(yes | no) "no" >

 <!ELEMENT esri_workflowdatapath   (%esri_section.notitle.cnt;)*                               >
<!ATTLIST esri_workflowdatapath
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                          >

 <!ELEMENT esri_workflowgoal   (%esri_section.notitle.cnt;)*                               >
<!ATTLIST esri_workflowgoal
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                          >

<!ELEMENT esri_workflowcomplexity   (#PCDATA)                               >
<!ATTLIST esri_workflowcomplexity
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             esri_complexity (advanced | beginner | intermediate  |  -dita-use-conref-target) "beginner"
             %univ-atts;                                          >

<!ELEMENT esri_workflowdatarequirement   (#PCDATA)                               >
<!ATTLIST esri_workflowdatarequirement
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             esri_requirement (ArcGIS_Online | data_and_maps | local_gov_sample_data | install_with_software | tutorial_dvd | use_your_own  | -dita-use-conref-target) "tutorial_dvd"
             %univ-atts;                                          >

<!ELEMENT esri_workflowbody     ((%esri_body.cnt;)*, ((%esri_section1;)| (%esri_workflowsteps;))* , (%esri_workflowsummary;)?, (%esri_mcdata;)?)  >
<!ATTLIST esri_workflowbody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %id-atts;
             %localization-atts;
             base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass CDATA                            #IMPLIED    >


<!--                    LONG NAME: Mapping Center Data                       -->
<!ELEMENT esri_mcdata       ((%esri_section.notitle.cnt;)*)                            >
<!ATTLIST esri_mcdata         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             esri_mctype  (map | tip | resource |  -dita-use-conref-target)        #IMPLIED
             outputclass    CDATA                            #IMPLIED    >

<!--                    LONG NAME: ESRI Section  1                       -->
<!ELEMENT esri_section1       ((%title;), ((%esri_section.notitle.cnt;) | (%esri_workflowsteps;))*, (%esri_section2;)*)                            >
<!ATTLIST esri_section1         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             %esri_licenserestriction-att;
             outputclass    CDATA                            #IMPLIED    >

<!--                    LONG NAME: ESRI Section  2                       -->
<!ELEMENT esri_section2       ((%title;), ((%esri_section.notitle.cnt;) | (%esri_workflowsteps;))*, (%esri_section3;)*)                            >
<!ATTLIST esri_section2         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             %esri_licenserestriction-att;
             outputclass    CDATA                            #IMPLIED    >

<!--                    LONG NAME: ESRI Section 3                       -->
<!ELEMENT esri_section3       ((%title;), ((%esri_section.notitle.cnt;) | (%esri_workflowsteps;))*)                            >
<!ATTLIST esri_section3         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             %esri_licenserestriction-att;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_workflowsteps      ((%title;)?,(%esri_prereq;)?, (%esri_context;)?, 
                                      (%esri_steps;)?, 
                                      (%esri_result;)?, (%esri_postreq;)?)    >
<!ATTLIST esri_workflowsteps
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_workflowsummary      ((%esri_section.notitle.cnt;)*)   >
<!ATTLIST esri_workflowsummary        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_workflow     %global-atts;          class  CDATA "- topic/topic  esri_workflow/esri_workflow ">

<!ATTLIST esri_workflowheader    %global-atts;     class  CDATA "- topic/prolog esri_workflow/esri_workflowheader ">
<!ATTLIST esri_workflowgoal                %global-atts;         class  CDATA "- topic/othermeta  esri_workflow/esri_workflowgoal ">
<!ATTLIST esri_workflowdatapath                %global-atts;         class  CDATA "- topic/othermeta  esri_workflow/esri_workflowdatapath ">

<!ATTLIST esri_workflowcomplexity          %global-atts;               class  CDATA "- topic/othermeta  esri_workflow/esri_workflowcomplexity ">
<!ATTLIST esri_workflowdatarequirement          %global-atts;               class  CDATA "- topic/othermeta  esri_workflow/esri_workflowdatarequirement ">

<!ATTLIST esri_workflowbody  %global-atts;         class  CDATA "- topic/body  esri_workflow/esri_workflowbody ">

<!ATTLIST esri_section1      %global-atts;  class  CDATA "- topic/section   esri_workflow/esri_section1 ">
<!ATTLIST esri_section2      %global-atts;   class  CDATA "- topic/section   esri_workflow/esri_section2 ">
<!ATTLIST esri_section3      %global-atts;   class  CDATA "- topic/section   esri_workflow/esri_section3 ">

<!ATTLIST esri_workflowsteps     %global-atts;     class  CDATA "- topic/body  esri_workflow/esri_workflowsteps ">

<!ATTLIST esri_workflowsummary    %global-atts;    class  CDATA "- topic/section  esri_workflow/esri_workflowsummary ">

<!ATTLIST esri_mcdata      %global-atts;  class  CDATA "- topic/section   esri_workflow/esri_mcdata ">
 
<!-- ================== End DITA Concept  ======================== -->



