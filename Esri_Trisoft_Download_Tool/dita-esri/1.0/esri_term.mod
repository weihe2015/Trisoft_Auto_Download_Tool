<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    ESRI Term                                      -->
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
PUBLIC "-//ESRI//ELEMENTS DITA ESRI_Term//EN"
      Delivered as file "esri_term.mod"                              -->


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
<!ENTITY % esri_term-info-types "%info-types;">
                       
<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % esri_term   "esri_term"                                   >
<!ENTITY % termMetadata   "termMetadata"                                   >
<!ENTITY % editHistory     "editHistory"                               >
<!ENTITY % fullTerm     "fullTerm"                                           >
<!ENTITY % broaderTerms   "broaderTerms"                             >
<!ENTITY % narrowerTerms   "narrowerTerms"                               >
<!ENTITY % relatedTerms   "relatedTerms"                               >
<!ENTITY % usedForTerms   "usedForTerms"                               >
<!ENTITY % useInsteadTerms     "useInsteadTerms"                      >
<!ENTITY % seeAlsoTerms   "seeAlsoTerms"                               >



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

<!--                    LONG NAME: esri_term                          -->
<!ELEMENT esri_term       ((%fullTerm;), (%termMetadata;)?,
                         (%broaderTerms;)?, (%narrowerTerms;)?, (%relatedTerms;)?,
                         (%usedForTerms;)?,(%useInsteadTerms;)?,(%seeAlsoTerms;)?)                   >
<!ATTLIST esri_term        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             id         ID                               #REQUIRED
             conref     CDATA                            #IMPLIED
             %select-atts;
             %localization-atts;
             %arch-atts;
             outputclass  CDATA               #IMPLIED
             domains    CDATA                "&included-domains;"    >


<!--                   Other elements                  -->
<!ELEMENT termMetadata       ((%editHistory;)?)     >
<!ELEMENT editHistory         (%p;)*      >
<!ELEMENT fullTerm            (#PCDATA)     >
<!ATTLIST fullTerm        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             id         ID                               #IMPLIED
             conref     CDATA                            #IMPLIED
             %select-atts;
             %localization-atts;
             %arch-atts;
             outputclass  CDATA               #IMPLIED
             domains    CDATA                "&included-domains;"    >

<!ELEMENT broaderTerms       ((%link;)*)    >
<!ELEMENT narrowerTerms      ((%link;)*)     >
<!ELEMENT relatedTerms       ((%link;)*)     >
<!ELEMENT usedForTerms       ((%link;)*)     >
<!ELEMENT useInsteadTerms     ((%link;)*)     >
<!ELEMENT seeAlsoTerms       ((%link;)*)     >




<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_term     %global-atts;  class CDATA "- topic/topic esri_term/esri_term ">
<!ATTLIST termMetadata  %global-atts;  class  CDATA "- topic/prolog  esri_term/termMetadata ">
<!ATTLIST editHistory    %global-atts;    class  CDATA "- topic/othermeta  esri_term/termMetadata/editHistory ">
<!ATTLIST fullTerm    %global-atts;  class CDATA "- topic/title esri_term/fullTerm ">
<!ATTLIST broaderTerms    %global-atts;  class CDATA "- topic/related-links esri_term/broaderTerms ">
<!ATTLIST narrowerTerms    %global-atts;  class CDATA "- topic/related-links esri_term/narrowerTerms ">
<!ATTLIST relatedTerms    %global-atts;  class CDATA "- topic/related-links esri_term/relatedTerms ">
<!ATTLIST usedForTerms    %global-atts;  class CDATA "- topic/related-links esri_term/usedForTerms ">
<!ATTLIST useInsteadTerms    %global-atts;  class CDATA "- topic/related-links esri_term/useInsteadTerms ">
<!ATTLIST seeAlsoTerms    %global-atts;  class CDATA "- topic/related-links esri_term/seeAlsoTerms ">
 
<!-- ================== End DITA Concept  ======================== -->




