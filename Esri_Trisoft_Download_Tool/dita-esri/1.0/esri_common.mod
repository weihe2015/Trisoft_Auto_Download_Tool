<!-- ============================================================= -->
<!--                    ELEMENT NAME ENTITIES                      -->
<!-- ============================================================= -->

<!ENTITY % esri_commondefs   PUBLIC 
"-//ESRI//ENTITIES DITA Common//EN" 
"esri_common.ent"                          >
%esri_commondefs;

<!ENTITY % esri_extensiondefs   PUBLIC 
"-//ESRI//ENTITIES DITA EXTENSIONS//EN" 
"esri_extensions.ent"                          >
%esri_extensiondefs;

<!-- ============================================================= -->
<!--                    COMMON ENTITY SETS                        -->
<!-- ============================================================= -->
<!ENTITY % esri_migration.incl    "%esri_migration;"                >

<!ENTITY % esri_body.cnt              "%basic.block; | %required-cleanup; |  %esri_migration.incl;"    >

<!ENTITY  % esri_txt.incl             "%draft-comment;|%required-cleanup;| %indexterm;" >

<!ENTITY % esri_xreftext.cnt         "#PCDATA | %basic.ph.noxref; | %image; | %fig; |  %esri_migration.incl;">

<!ENTITY % esri_section.cnt           "%basic.ph; | %basic.block; | %title; | %esri_txt.incl; |  %esri_migration.incl; ">

<!ENTITY % esri_section.notitle.cnt   "%basic.ph; | %basic.block;  | %esri_txt.incl; |  %esri_migration.incl; ">

<!ENTITY % esri_ph.cnt               "#PCDATA |  %basic.ph; | %image;  | %fig; | %esri_txt.incl; |  %esri_migration.incl; ">

<!ENTITY % esri_itemgroup.cnt        "#PCDATA | %basic.ph; | %basic.block; | %esri_txt.incl; |  %esri_migration.incl;">

<!ENTITY % esri_listitem.cnt         "#PCDATA |  %basic.ph; | %basic.block; |%itemgroup;| %esri_txt.incl; |  %esri_migration.incl;">
   
<!ENTITY % esri_tblcell.cnt          "%basic.ph; | %basic.block.notbl;  | %esri_txt.incl; |  %esri_migration.incl;">

<!ENTITY % esri_word.cnt            "#PCDATA | %tm;">


<!ENTITY % esri_term.cnt    "%basic.ph; | %basic.block;  |  %esri_migration.incl; ">
<!ENTITY % esri_defn.cnt    "%basic.ph; | %basic.block;  |  %esri_migration.incl; ">

<!-- use by esri_apicommon.mod -->
<!ENTITY % esri_codeblock.cnt    "#PCDATA | %basic.ph.notm; | %esri_txt.incl; |  %esri_migration.incl;" >
<!ENTITY % esri_illustrationdesc.cnt    "#PCDATA | %basic.ph; | %esri_txt.incl; |  %esri_migration.incl;" >

<!-- use by esri_notedomain,mod -->
<!ENTITY % esri_note.cnt          "#PCDATA | %basic.ph; | %basic.block.nonote; | %esri_txt.incl; |  %esri_migration.incl;">

<!-- use by esri_uidomain,mod -->
<!ENTITY % esri_words.cnt            "#PCDATA | %keyword; | %term;">


<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->

             
<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!ELEMENT esri_prolog   ((%esri_license;),(%esri_extensions;)?, (%esri_indexterms;)?, (%esri_keywords;)?)                  >
<!ATTLIST esri_prolog        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                               
              outputclass                CDATA                            #IMPLIED    >


<!ELEMENT esri_extensions   (%esri_extension;)*                              >
<!ATTLIST esri_extensions        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                               
             outputclass                CDATA                            #IMPLIED    >


<!ELEMENT esri_extension   (#PCDATA)                              >
<!ATTLIST esri_extension
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %esri_extension-att;
             %univ-atts;                               
             outputclass                CDATA                            #IMPLIED    >

<!ELEMENT esri_indexterms   (%esri_indexterm1;)*                 >
<!ATTLIST esri_indexterms        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                               
             outputclass                CDATA                            #IMPLIED    >

<!ELEMENT esri_indexterm1   ( %esri_word.cnt; | %esri_indexterm2; )*                  >
<!ATTLIST esri_indexterm1        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                               
             outputclass                CDATA                            #IMPLIED    >
             
<!ELEMENT esri_indexterm2   (%esri_word.cnt;)*                  >
<!ATTLIST esri_indexterm2        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                               
             outputclass                CDATA                            #IMPLIED    >


<!ELEMENT esri_keywords   (%keyword;)*                  >
<!ATTLIST esri_keywords        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                               
             outputclass                CDATA                            #IMPLIED    >

<!ELEMENT esri_authornotes   (%esri_section.notitle.cnt;)*                  >
<!ATTLIST esri_authornotes        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                               
             outputclass                CDATA                            #IMPLIED    >


<!ELEMENT esri_migration   ANY                 >
<!ATTLIST esri_migration        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                             
             outputclass                CDATA                            #IMPLIED    >

<!ELEMENT esri_cstag   ANY                 >
<!ATTLIST esri_cstag
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                             
             cstagname            CDATA                    #IMPLIED
             outputclass                CDATA                            #IMPLIED    >

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

<!ATTLIST esri_authornotes   %global-atts;   class  CDATA "- topic/draft-comment  esri_common/esri_authornotes ">

<!ATTLIST esri_prolog  %global-atts;        class  CDATA "- topic/prolog  esri_common/esri_prolog ">

<!ATTLIST esri_extensions %global-atts;   class  CDATA "- topic/othermeta  esri_common/esri_extensions ">
<!ATTLIST esri_extension   %global-atts;   class  CDATA "- topic/othermeta  esri_common/esri_extension ">

<!--
<!ATTLIST esri_productspecialities %global-atts;   class  CDATA "- topic/othermeta  esri_common/esri_productspecialities ">
<!ATTLIST esri_productspeciality   %global-atts;   class  CDATA "- topic/othermeta  esri_common/esri_productspeciality ">
-->

<!ATTLIST esri_indexterms    %global-atts;    class  CDATA "- topic/othermeta  esri_common/esri_indexterms ">
<!ATTLIST esri_indexterm1 %global-atts;   class  CDATA "- topic/othermeta  esri_common/esri_indexterm1 ">
<!ATTLIST esri_indexterm2   %global-atts;   class  CDATA "- topic/othermeta  esri_common/esri_indexterm2 ">

<!ATTLIST esri_keywords    %global-atts;    class  CDATA "- topic/othermeta  esri_common/esri_keywords ">

<!ATTLIST esri_migration   %global-atts;   class  CDATA "- topic/foreign  esri_common/esri_migration ">
<!ATTLIST esri_cstag   %global-atts;   class  CDATA "- topic/foreign  esri_common/esri_cstag ">

<!-- ================== End Common Elements Module  ============== -->
