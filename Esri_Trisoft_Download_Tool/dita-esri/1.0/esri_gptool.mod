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



<!ENTITY % esri_gpenvdefs   PUBLIC 
"-//ESRI//ENTITIES DITA GPTOOLENV//EN" 
"esri_gpenvironment.ent"                          >
%esri_gpenvdefs;


<!-- ============================================================= -->
<!--                   SPECIALIZATION OF DECLARED ELEMENTS         -->
<!-- ============================================================= -->

                       
<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->
 
  <!--                      Content elements common to map and topic -->

<!ENTITY % esri_gptool      "esri_gptool">

<!ENTITY % esri_toollabel    "esri_toollabel">

<!ENTITY % esri_toolprolog  "esri_toolprolog">

<!ENTITY % esri_toolbody    "esri_toolbody">


<!ENTITY % esri_summary          "esri_summary">

<!ENTITY % esri_dialogimage     "esri_dialogimage">
<!ENTITY % esri_toolillustration     "esri_toolillustration">

<!ENTITY % esri_usages      		"esri_usages">
<!ENTITY % esri_usage     			"esri_usage">

<!ENTITY % esri_syntax      		"esri_syntax">

<!ENTITY % esri_toolname                "esri_toolname">

<!ENTITY % esri_parameters      	"esri_parameters">
<!ENTITY % esri_param      	                "esri_param">
<!ENTITY % esri_paramcategory       "esri_paramcategory">

<!ENTITY % esri_paramtable      	"esri_paramtable">
<!ENTITY % esri_paramhead      	"esri_paramhead">
<!ENTITY % esri_pynamehd      	               "esri_pynamehd">
<!ENTITY % esri_dlgdsphd      	               "esri_dlgdsphd">
<!ENTITY % esri_paraminfohd      	"esri_paraminfohd">
<!ENTITY % esri_pyexprhd      	                "esri_pyexprhd">
<!ENTITY % esri_paramrow      	                "esri_paramrow">
<!ENTITY % esri_pyname      		"esri_pyname">
<!ENTITY % esri_dlgdisplayname             "esri_dlgdisplayname">
<!ENTITY % esri_paraminfo                      "esri_paraminfo">
<!ENTITY % esri_pyexpression      	"esri_pyexpression">

<!ENTITY % esri_explanation      	"esri_explanation">

<!ENTITY % esri_gpenvironment     "esri_gpenvironment" >

<!ENTITY % esri_gpenvhd          "esri_gpenvhd" >
<!ENTITY % esri_gpenvnamehd      "esri_gpenvnamehd" >
<!ENTITY % esri_gpenvdeschd      "esri_gpenvdeschd" >

<!ENTITY % esri_gpenv            "esri_gpenv" >
<!ENTITY % esri_gpenvname        "esri_gpenvname" >
<!ENTITY % esri_gpenvdesc        "esri_gpenvdesc" >

<!-- sa only -->
<!ENTITY % esri_sainfo            "esri_sainfo" >
<!ENTITY % esri_satoolusage        "esri_satoolusage" >
<!ENTITY % esri_returnvals      	"esri_returnvals">
<!ENTITY % esri_returnval      		"esri_returnval">

<!ENTITY % esri_retvaltable      "esri_retvaltable">
<!ENTITY % esri_retvalhead      "esri_retvalhead">
<!ENTITY % esri_retvalinfohd    "esri_retvalinfohd">
<!ENTITY % esri_retvalrow         "esri_retvalrow">
<!ENTITY % esri_retvalinfo         "esri_retvalinfo">


<!-- derivated output -->
<!ENTITY % esri_derivedoutputs              "esri_derivedoutputs" >
<!ENTITY % esri_derivedvals                 "esri_derivedvals">
<!ENTITY % esri_derivedval                  "esri_derivedval">

<!ENTITY % esri_derivedvaltable             "esri_derivedvaltable">
<!ENTITY % esri_derivedvalhead              "esri_derivedvalhead">
<!ENTITY % esri_derivedvalmbnamehd          "esri_derivedvalmbnamehd">
<!ENTITY % esri_derivedvalinfohd            "esri_derivedvalinfohd">
<!ENTITY % esri_derivedvalrow               "esri_derivedvalrow">
<!ENTITY % esri_derivedvalmbname            "esri_derivedvalmbname">
<!ENTITY % esri_derivedvalinfo              "esri_derivedvalinfo">

<!ENTITY % esri_gptool-info-types "%info-types;" >

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
<!ELEMENT esri_gptool  ((%esri_toollabel;)+, (%shortdesc;), (%esri_prolog;)?, (%esri_toolprolog;)?,(%esri_toolbody;)?,
                                        (%esri_authornotes;)?, (%esri_gptool-info-types;)* ) >
 
<!ATTLIST     esri_gptool            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                          id ID #REQUIRED
                          conref CDATA #IMPLIED
                         %select-atts;
                         %localization-atts;
                         %arch-atts;
                          outputclass CDATA #IMPLIED
                          domains CDATA "&included-domains;">

<!ELEMENT esri_toollabel     (#PCDATA)   >
<!ATTLIST     esri_toollabel        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >


<!ELEMENT esri_toolprolog     ((%esri_deprecatedat;)?)   >
<!ATTLIST     esri_toolprolog        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >


<!ELEMENT esri_toolbody       (((%esri_summary;),
                                                            (%esri_dialogimage;)?, 
                                                            (%esri_toolillustration;)?, 
                                                            (%esri_usages;),
                                                           (%esri_syntax;), 
                                                           (%esri_codesamples;),
                                                           (%esri_gpenvironment;)) | (%esri_migration;)*)                 >
<!ATTLIST     esri_toolbody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %id-atts;
             %localization-atts;
             base                           CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass               CDATA                            #IMPLIED    >


<!ELEMENT esri_summary     (%esri_section.notitle.cnt;)*   >
<!ATTLIST     esri_summary        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >

<!ELEMENT esri_dialogimage     ((%esri_image;) | (%esri_migration;))   >
<!ATTLIST     esri_dialogimage        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >

<!ELEMENT esri_toolillustration         (((%esri_image;)+, (%esri_caption;)?)  | (%esri_migration;))                                    >
<!ATTLIST esri_toolillustration           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  >
   
<!-- usage -->
<!ELEMENT esri_usages            (%esri_usage; | %esri_migration;)*                                      >
<!ATTLIST esri_usages            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             spectitle      CDATA                            #IMPLIED
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_usage            (%esri_listitem.cnt;)*                            >
<!ATTLIST    esri_usage             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             esri_qref         (no | yes)                          "no"
             outputclass     CDATA                            #IMPLIED    >


<!-- syntax -->
<!ELEMENT esri_syntax            ((%esri_toolname;)+, (%esri_parameters;)?,(%esri_sainfo;)?,(%esri_derivedoutputs;)?)                            >
<!ATTLIST    esri_syntax             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_toolname     (#PCDATA)   >
<!ATTLIST     esri_toolname        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED        >

<!ELEMENT esri_parameters            (%esri_param; | %esri_migration;)+                           >
<!ATTLIST    esri_parameters             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_param            ((%esri_paramtable;), (%esri_explanation;)+, (%esri_paramcategory;)?)                            >
<!ATTLIST    esri_param             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_paramtable   ((%esri_paramhead;), (%esri_paramrow;) )                   >
<!ATTLIST esri_paramtable     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                            #IMPLIED
             keycol     NMTOKEN                          "1"
             refcols    NMTOKENS                         #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_paramhead        ((%esri_pynamehd;), (%esri_dlgdsphd;),(%esri_paraminfohd;), (%esri_pyexprhd;) )              >
<!ATTLIST esri_paramhead         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_pynamehd    (#PCDATA)                             >
<!ATTLIST esri_pynamehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_dlgdsphd      (#PCDATA)                             >
<!ATTLIST esri_dlgdsphd      
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_paraminfohd    (#PCDATA)                             >
<!ATTLIST esri_paraminfohd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_pyexprhd      (#PCDATA)                             >
<!ATTLIST esri_pyexprhd      
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_paramrow         ((%esri_pyname;), (%esri_dlgdisplayname;), (%esri_paraminfo;), (%esri_pyexpression;))                  >
<!ATTLIST esri_paramrow        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_pyname      (#PCDATA)>
<!ATTLIST esri_pyname        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_dlgdisplayname      (#PCDATA)>
<!ATTLIST esri_dlgdisplayname        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_paraminfo        (#PCDATA)>
<!ATTLIST esri_paraminfo                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts; 
             esri_direction     (input | output) #REQUIRED
             esri_required     (yes | no)        #REQUIRED
             esri_isList          (yes | no)        "no"
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_pyexpression      (#PCDATA | %ph; )* >
<!ATTLIST esri_pyexpression        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_explanation            (%esri_section.notitle.cnt; | %esri_enumtable; | %esri_enumlabeltable;)*                           >
<!ATTLIST    esri_explanation
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            esri_type (dialog | python | dialog_and_python ) "dialog_and_python"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_paramcategory      (#PCDATA)>
<!ATTLIST esri_paramcategory        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!--  GP Environments -->

<!ELEMENT esri_gpenvironment       ((%esri_gpenvhd;), (%esri_gpenv;)*)             >
<!ATTLIST esri_gpenvironment         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                           #IMPLIED
             keycol     NMTOKEN                         #IMPLIED
             refcols    NMTOKENS                        #IMPLIED
             spectitle  CDATA                           #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_gpenvhd      ((%esri_gpenvnamehd;), (%esri_gpenvdeschd;))                            >
<!ATTLIST esri_gpenvhd       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_gpenvnamehd    (#PCDATA)                             >
<!ATTLIST esri_gpenvnamehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_gpenvdeschd    (#PCDATA)                            >
<!ATTLIST esri_gpenvdeschd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_gpenv       ((%esri_gpenvname;), (%esri_gpenvdesc;))                            >
<!ATTLIST esri_gpenv         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_gpenvname      ( #PCDATA)                            >
<!ATTLIST esri_gpenvname 
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
            %esri_gpenv-att;
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_gpenvdesc      (%esri_tblcell.cnt; )*                            >
<!ATTLIST esri_gpenvdesc         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!-- sa info -->

<!ELEMENT esri_sainfo            ((%esri_returnvals;)?, (%esri_satoolusage;)?)                           >
<!ATTLIST    esri_sainfo             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_satoolusage            (#PCDATA)                           >
<!ATTLIST    esri_satoolusage             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_returnvals            (%esri_returnval;)+                           >
<!ATTLIST    esri_returnvals             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_returnval            ((%esri_retvaltable;),
                                                            (%esri_explanation;)+)                            >
<!ATTLIST    esri_returnval             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_retvaltable   ((%esri_retvalhead;), (%esri_retvalrow;)+ )                   >
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


<!ELEMENT esri_retvalhead        ((%esri_pynamehd;), (%esri_dlgdsphd;),(%esri_retvalinfohd;) )              >
<!ATTLIST esri_retvalhead         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_retvalinfohd    (#PCDATA)                             >
<!ATTLIST esri_retvalinfohd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_retvalrow         ((%esri_pyname;), (%esri_dlgdisplayname;), (%esri_retvalinfo;))                  >
<!ATTLIST esri_retvalrow        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_retvalinfo        (#PCDATA)>
<!ATTLIST esri_retvalinfo                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts; 
             outputclass     CDATA                            #IMPLIED    >


<!-- derived ouput -->

<!ELEMENT esri_derivedoutputs            ((%esri_derivedvals;)?)                           >
<!ATTLIST esri_derivedoutputs             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_derivedvals            (%esri_derivedval;)+                           >
<!ATTLIST esri_derivedvals             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_derivedval            ((%esri_derivedvaltable;),(%esri_explanation;)+)                            >
<!ATTLIST esri_derivedval             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_derivedvaltable   ((%esri_derivedvalhead;), (%esri_derivedvalrow;)+ )                   >
<!ATTLIST esri_derivedvaltable     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                            #IMPLIED
             keycol     NMTOKEN                          "1"
             refcols    NMTOKENS                         #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_derivedvalhead        ((%esri_derivedvalmbnamehd;), (%esri_pynamehd;), (%esri_derivedvalinfohd;) )              >
<!ATTLIST esri_derivedvalhead         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_derivedvalmbnamehd    (#PCDATA)                             >
<!ATTLIST esri_derivedvalmbnamehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_derivedvalinfohd    (#PCDATA)                             >
<!ATTLIST esri_derivedvalinfohd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_derivedvalrow      ((%esri_derivedvalmbname;), (%esri_pyname;), (%esri_derivedvalinfo;))           >
<!ATTLIST esri_derivedvalrow        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_derivedvalmbname        (#PCDATA)>
<!ATTLIST esri_derivedvalmbname                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts; 
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_derivedvalinfo        (#PCDATA)>
<!ATTLIST esri_derivedvalinfo                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts; 
             outputclass     CDATA                            #IMPLIED    >


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_gptool                      %global-atts;                      class  CDATA "- topic/topic  esri_gptool/esri_gptool ">

<!ATTLIST esri_toollabel               %global-atts;                       class  CDATA "- topic/title  esri_gptool/esri_toollabel ">

<!ATTLIST esri_toolprolog               %global-atts;                        class  CDATA "- topic/prolog  esri_gptool/esri_toolprolog ">

<!ATTLIST esri_toolbody               %global-atts;                        class  CDATA "- topic/body  esri_gptool/esri_toolbody ">

<!ATTLIST esri_summary           %global-atts;                        class  CDATA "- topic/ph  esri_gptool/esri_summary ">

<!ATTLIST esri_dialogimage             %global-atts;                  class  CDATA "- topic/fig  esri_gptool/esri_dialogimage ">
<!ATTLIST esri_toolillustration             %global-atts;                  class  CDATA "- topic/fig  esri_gptool/esri_toolillustration ">

<!ATTLIST esri_usages               %global-atts;                 class  CDATA "- topic/ul  esri_gptool/esri_usages ">
<!ATTLIST esri_usage                 %global-atts;                   class  CDATA "- topic/li  esri_gptool/esri_usage ">

<!ATTLIST esri_syntax           %global-atts;               class  CDATA "- topic/section  esri_gptool/esri_syntax ">

<!ATTLIST esri_toolname               %global-atts;                       class  CDATA "- topic/ph  esri_gptool/esri_toolname ">


<!ATTLIST esri_parameters      %global-atts;         class  CDATA "- topic/dl  esri_gptool/esri_parameters ">
<!ATTLIST esri_param               %global-atts;         class  CDATA "- topic/dlentry  esri_gptool/esri_param ">

<!ATTLIST esri_paramcategory        %global-atts;                class  CDATA "- topic/ph  esri_gptool/esri_paramcategory ">

<!ATTLIST esri_paramtable           %global-atts;                class  CDATA "- topic/simpletable  esri_gptool/esri_paramtable ">

<!ATTLIST esri_paramhead                         %global-atts;                class  CDATA "- topic/sthead  esri_gptool/esri_paramhead ">
<!ATTLIST esri_pynamehd             %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_pynamehd ">
<!ATTLIST esri_dlgdsphd                %global-atts;                class  CDATA "- topic/stentry  esri_gptool/esri_dlgdsphd ">
<!ATTLIST esri_paraminfohd             %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_paraminfohd ">
<!ATTLIST esri_pyexprhd                %global-atts;                class  CDATA "- topic/stentry  esri_gptool/esri_pyexprhd ">

<!ATTLIST esri_paramrow              %global-atts;                   class  CDATA "- topic/strow  esri_gptool/esri_paramrow ">
<!ATTLIST esri_pyname                %global-atts;                  class  CDATA "- topic/stentry  esri_gptool/esri_pyname ">
<!ATTLIST esri_dlgdisplayname                  %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_dlgdisplayname ">
<!ATTLIST esri_paraminfo                %global-atts;                  class  CDATA "- topic/stentry  esri_gptool/esri_paraminfo ">
<!ATTLIST esri_pyexpression                  %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_pyexpression ">

<!ATTLIST esri_explanation               %global-atts;         class  CDATA "- topic/dd  esri_gptool/esri_explanation ">

<!ATTLIST esri_gpenvironment           %global-atts;                class  CDATA "- topic/simpletable  esri_gptool/esri_gpenvironment ">

<!ATTLIST esri_gpenvhd                         %global-atts;                class  CDATA "- topic/sthead  esri_gptool/esri_gpenvhd ">
<!ATTLIST esri_gpenvnamehd             %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_gpenvnamehd ">
<!ATTLIST esri_gpenvdeschd                %global-atts;                class  CDATA "- topic/stentry  esri_gptool/esri_gpenvdeschd ">

<!ATTLIST esri_gpenv              %global-atts;                   class  CDATA "- topic/strow  esri_gptool/esri_gpenv ">
<!ATTLIST esri_gpenvname                %global-atts;                  class  CDATA "- topic/stentry  esri_gptool/esri_gpenvname ">
<!ATTLIST esri_gpenvdesc                  %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_gpenvdesc ">

<!-- sa only -->

<!ATTLIST esri_sainfo               %global-atts;         class  CDATA "- topic/section  esri_gptool/esri_sainfo ">
<!ATTLIST esri_satoolusage               %global-atts;         class  CDATA "- topic/keyword  esri_gptool/esri_satoolusage ">
<!ATTLIST esri_returnvals               %global-atts;         class  CDATA "- topic/section  esri_gptool/esri_returnvals ">
<!ATTLIST esri_returnval               %global-atts;         class  CDATA "- topic/keyword  esri_gptool/esri_returnval ">

<!ATTLIST esri_retvaltable           %global-atts;                class  CDATA "- topic/simpletable  esri_gptool/esri_retvaltable ">
<!ATTLIST esri_retvalhead                         %global-atts;                class  CDATA "- topic/sthead  esri_gptool/esri_retvalhead ">
<!ATTLIST esri_retvalinfohd             %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_retvalinfohd ">
<!ATTLIST esri_retvalrow              %global-atts;                   class  CDATA "- topic/strow  esri_gptool/esri_retvalrow ">
<!ATTLIST esri_retvalinfo                %global-atts;                  class  CDATA "- topic/stentry  esri_gptool/esri_retvalinfo ">

<!-- derived output-->

<!ATTLIST esri_derivedoutputs               %global-atts;         class  CDATA "- topic/section  esri_gptool/esri_derivedoutputs ">
<!ATTLIST esri_derivedvals               %global-atts;         class  CDATA "- topic/section  esri_gptool/esri_derivedvals ">
<!ATTLIST esri_derivedval               %global-atts;         class  CDATA "- topic/keyword  esri_gptool/esri_derivedval ">

<!ATTLIST esri_derivedvaltable           %global-atts;                class  CDATA "- topic/simpletable  esri_gptool/esri_derivedvaltable ">
<!ATTLIST esri_derivedvalhead                         %global-atts;                class  CDATA "- topic/sthead  esri_gptool/esri_derivedvalhead ">
<!ATTLIST esri_derivedvalmbnamehd             %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_derivedvalmbnamehd ">
<!ATTLIST esri_derivedvalinfohd             %global-atts;                 class  CDATA "- topic/stentry  esri_gptool/esri_derivedvalinfohd ">
<!ATTLIST esri_derivedvalrow              %global-atts;                   class  CDATA "- topic/strow  esri_gptool/esri_derivedvalrow ">
<!ATTLIST esri_derivedvalmbname                %global-atts;                  class  CDATA "- topic/stentry  esri_gptool/esri_derivedvalmbname ">
<!ATTLIST esri_derivedvalinfo                %global-atts;                  class  CDATA "- topic/stentry  esri_gptool/esri_derivedvalinfo ">


<!-- ================== End DITA Concept  ======================== -->




