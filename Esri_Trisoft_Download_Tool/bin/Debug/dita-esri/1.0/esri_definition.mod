<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    ESRI Definition                                      -->
<!--  VERSION:   1.1                                               -->
<!--  DATE:      April 2009                                     -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//ESRI//ELEMENTS DITA ESRI_Definition//EN"
      Delivered as file "esri_definition.mod"                      -->
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
<!ENTITY % esri_definition-info-types "%info-types;" >
                       
<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->
 
 <!--                      Content elements common to map and topic -->
 
<!ENTITY % esri_definition          "esri_definition"                >
<!ENTITY % defBody               "defBody"                      >
<!ENTITY % illustration             "illustration" >
<!ENTITY % defMetadata              "defMetadata"                     >
<!ENTITY % editHistory              "editHistory"                    >
<!ENTITY % reference                "reference"                     >
<!ENTITY % rejectedReference        "rejectedReference"              >
<!ENTITY % taxonomyClass            "taxonomyClass"                     >
<!ENTITY % associatedSoftware       "associatedSoftware"              >
<!ENTITY % software									"software"              >





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


<!--                    LONG NAME: ESRI Definiton                         -->
<!ELEMENT esri_definition  ((%title;),(%defBody;), (%illustration;), (%defMetadata;))>
<!ATTLIST esri_definition             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                          id     ID     #REQUIRED
                         conref     CDATA     #IMPLIED
                         %select-atts;
                         %localization-atts;
                         %arch-atts;
                          outputclass     CDATA     #IMPLIED
                          domains     CDATA     "&included-domains;">
                          
<!--                    LONG NAME: Definition Body                   -->
<!ELEMENT defBody     ((%p;)*)  >
<!ATTLIST defBody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
              %id-atts;
              %localization-atts;
              base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass    CDATA                            #IMPLIED    >

<!--                    LONG NAME: Definition illustration                   -->
<!ELEMENT illustration     ((%image;)*)  >

<!--                    LONG NAME: Term Metadata                   -->
<!ELEMENT defMetadata       ((%reference;)?,(%rejectedReference;)?,(%taxonomyClass;)?,(%associatedSoftware;)?,(%editHistory;)?)     >
<!ELEMENT reference                 (%p;)*      >
<!ELEMENT rejectedReference         (%p;)*      >
<!ELEMENT taxonomyClass             (#PCDATA)     >
<!ELEMENT associatedSoftware        (%software;)*     >
<!ELEMENT software									(#PCDATA)     >
<!ELEMENT editHistory              (%p;)*     >

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_definition    %global-atts;  class  CDATA "- topic/topic esri_definition/esri_definition ">
<!ATTLIST defBody            %global-atts;   class  CDATA "- topic/body esri_definition/defBody ">
<!ATTLIST illustration       %global-atts;   class  CDATA "- topic/fig esri_definition/illustration ">
<!ATTLIST defMetadata       %global-atts;  class  CDATA "- topic/prolog  esri_definition/defMetadata ">
<!ATTLIST editHistory        %global-atts;    class  CDATA "- topic/othermeta  esri_definition/editHistory ">
<!ATTLIST reference       %global-atts;    class  CDATA "- topic/othermeta  esri_definition/reference ">
<!ATTLIST rejectedReference       %global-atts;    class  CDATA "- topic/othermeta  esri_definition/rejectedReference ">
<!ATTLIST taxonomyClass       %global-atts;    class  CDATA "- topic/othermeta  esri_definition/taxonomyClass ">
<!ATTLIST associatedSoftware       %global-atts;    class  CDATA "- topic/othermeta  esri_definition/associatedSoftware ">
<!ATTLIST software       %global-atts;    class  CDATA "- topic/othermeta  esri_definition/software ">


<!-- ================== End DITA Concept  ======================== -->




