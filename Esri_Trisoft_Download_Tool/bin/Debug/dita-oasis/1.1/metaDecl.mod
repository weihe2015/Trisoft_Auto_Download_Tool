<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Metadata                                     -->
<!--  VERSION:   1.1                                               -->
<!--  DATE:      November 2006                                     -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//OASIS//ENTITIES DITA Metadata//EN"
      Delivered as file "metaDecl.mod"                             -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for the DITA XML Metadata              -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             March 2001                                        -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2005, 2006.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2005.11.15 RDA: Corrected the "Delivered as" system ID     -->
<!--    2006.06.06 RDA: Move indexterm into commonElements         -->
<!--    2006.06.07 RDA: Make universal attributes universal        -->
<!--                      (DITA 1.1 proposal #12)                  -->
<!--    2006.11.30 RDA: Add -dita-use-conref-target to enumerated  -->
<!--                      attributes                               -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                    ELEMENT NAME ENTITIES                      -->
<!-- ============================================================= -->


<!ENTITY % date-format 'CDATA'                                       >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Author                          -->
<!ELEMENT author        (%words.cnt;)*                               >
<!ATTLIST author 
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             href       CDATA                            #IMPLIED
             keyref     CDATA                            #IMPLIED
             type       (creator | contributor | 
                         -dita-use-conref-target)        #IMPLIED    >


<!--                     LONG NAME: Source                         -->
<!ELEMENT source        (%words.cnt;)*                               >
<!ATTLIST source 
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             href       CDATA                            #IMPLIED
             keyref     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Publisher                       -->
<!ELEMENT publisher     (%words.cnt;)*                               >
<!ATTLIST publisher
             href       CDATA                            #IMPLIED
             keyref     CDATA                            #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Copyright                       -->
<!ELEMENT copyright     ((%copyryear;)+, %copyrholder;)              >
<!ATTLIST copyright 
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             type       (primary | secondary | 
                         -dita-use-conref-target)        #IMPLIED    >


<!--                    LONG NAME: Copyright Year                  -->
<!ELEMENT copyryear     EMPTY                                        >
<!ATTLIST copyryear
             year       %date-format;                    #REQUIRED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Copyright Holder                -->
<!ELEMENT copyrholder   (%words.cnt;)*                               >
<!ATTLIST copyrholder
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Critical Dates                  -->
<!ELEMENT critdates     (%created;, (%revised;)*)                    >
<!ATTLIST critdates
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Created Date                    -->
<!ELEMENT created       EMPTY                                        >
<!ATTLIST created 
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             date       %date-format;                    #REQUIRED
             golive     %date-format;                    #IMPLIED
             expiry     %date-format;                    #IMPLIED    >


<!--                    LONG NAME: Revised Date                    -->
<!ELEMENT revised       EMPTY                                        >
<!ATTLIST revised  
             modified   %date-format;                    #REQUIRED
             golive     %date-format;                    #IMPLIED
             expiry     %date-format;                    #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Permissions                     -->
<!ELEMENT permissions   EMPTY                                        >
<!ATTLIST permissions
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             view       (internal | classified | all | 
                         entitled | 
                         -dita-use-conref-target)        #REQUIRED   >


<!--                    LONG NAME: Category                        -->
<!ELEMENT category      (%words.cnt;)*                               >
<!ATTLIST category     
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Audience                        -->
<!ELEMENT audience      EMPTY                                        >
<!ATTLIST audience
             type       (user | purchaser |
                         administrator | programmer |
                         executive | services | other | 
                         -dita-use-conref-target)        #IMPLIED
             othertype  CDATA                            #IMPLIED
             job        (installing | customizing | 
                         administering | programming |
                         using | maintaining |
                         troubleshooting | evaluating |
                         planning | migrating | other | 
                         -dita-use-conref-target)        #IMPLIED
             otherjob   CDATA                            #IMPLIED
             experiencelevel
                        (novice | general | expert | 
                         -dita-use-conref-target)        #IMPLIED
             name       NMTOKEN                          #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Keywords                        -->
<!ELEMENT keywords      (%indexterm; | %keyword;)*                   >
<!ATTLIST keywords
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Product Information             -->
<!ELEMENT prodinfo      ((%prodname;), (%vrmlist;),
                         (%brand; | %series; | %platform; | 
                          %prognum; | %featnum; | %component;)* )    >
<!ATTLIST prodinfo
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Product Name                    -->
<!ELEMENT prodname      (%words.cnt;)*                               > 
<!ATTLIST prodname
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Version Release and Modification
                                   List                            -->
<!ELEMENT vrmlist       (%vrm;)+                                     >
<!ATTLIST vrmlist
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Version Release and Modification-->
<!ELEMENT vrm           EMPTY                                        >
<!ATTLIST vrm
             %univ-atts;               
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"               
             version    CDATA                            #REQUIRED
             release    CDATA                            #IMPLIED
             modification 
                        CDATA                            #IMPLIED    >
             
<!--                    LONG NAME: Brand                           -->
<!ELEMENT brand         (%words.cnt;)*                               >
<!ATTLIST brand
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Series                          -->
<!ELEMENT series        (%words.cnt;)*                               >
<!ATTLIST series
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Platform                        -->
<!ELEMENT platform      (%words.cnt;)*                               >
<!ATTLIST platform
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Program Number                  -->
<!ELEMENT prognum       (%words.cnt;)*                               >
<!ATTLIST prognum
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Feature Number                  -->
<!ELEMENT featnum       (%words.cnt;)*                               >
<!ATTLIST featnum
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Component                       -->
<!ELEMENT component     (%words.cnt;)*                               >
<!ATTLIST component
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >                                     


<!--                    LONG NAME: Other Metadata                  -->
<!--                    NOTE: needs to be HTML-equiv, at least     -->
<!ELEMENT othermeta     EMPTY                                        >
<!ATTLIST othermeta 
             name       CDATA                            #REQUIRED
             content    CDATA                            #REQUIRED
             translate-content
                        (yes | no | 
                         -dita-use-conref-target)        #IMPLIED
             %univ-atts;
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"                                             >


<!--                    LONG NAME: Resource Identifier             -->
<!ELEMENT resourceid    EMPTY                                        >
<!ATTLIST resourceid
             %select-atts;
             %localization-atts;
             id         CDATA                            #REQUIRED
             conref     CDATA                            #IMPLIED
             appname    CDATA                            #IMPLIED    >


<!ELEMENT esri_gptoolboxmeta     ((%esri_gptoolboxname;), (%esri_gptoolboxlabel;)?, (%esri_license;)? )                              >
<!ATTLIST esri_gptoolboxmeta
             %univ-atts;                       
             esri_gptoolboxid          CDATA     #REQUIRED
             esri_gptoolboxalias       CDATA     #REQUIRED
             esri_rootchm              CDATA   	 "ArcInfoMain.chm">                                     

<!ELEMENT esri_gptoolboxname     (#PCDATA)                               >
<!ATTLIST esri_gptoolboxname
             %univ-atts;                                             >                                     

<!ELEMENT esri_gptoolboxlabel     (#PCDATA)                               >
<!ATTLIST esri_gptoolboxlabel
             %univ-atts;                                             >                                     

<!ELEMENT esri_gptoolsetmeta    ((%esri_license;)?, (%esri_gptoolsetname;)?) >
<!ATTLIST esri_gptoolsetmeta
             %univ-atts;                                             >                                     

<!ELEMENT esri_gptoolsetname     (#PCDATA)                               >
<!ATTLIST esri_gptoolsetname
             %univ-atts;                                             >
             
<!ELEMENT esri_gptoolmeta    ((%esri_license;)? )                              >
<!ATTLIST esri_gptoolmeta
             esri_gptoolid CDATA    #REQUIRED
            %univ-atts;                                             >                                     


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->
             

<!ATTLIST author      %global-atts;  class CDATA "- topic/author "      >
<!ATTLIST source      %global-atts;  class CDATA "- topic/source "      >
<!ATTLIST publisher   %global-atts;  class CDATA "- topic/publisher "   >
<!ATTLIST copyright   %global-atts;  class CDATA "- topic/copyright "   >
<!ATTLIST copyryear   %global-atts;  class CDATA "- topic/copyryear "   >
<!ATTLIST copyrholder %global-atts;  class CDATA "- topic/copyrholder " >
<!ATTLIST critdates   %global-atts;  class CDATA "- topic/critdates "   >
<!ATTLIST created     %global-atts;  class CDATA "- topic/created "     >
<!ATTLIST revised     %global-atts;  class CDATA "- topic/revised "     >
<!ATTLIST permissions %global-atts;  class CDATA "- topic/permissions " >
<!ATTLIST category    %global-atts;  class CDATA "- topic/category "    >
<!ATTLIST audience    %global-atts;  class CDATA "- topic/audience "    >
<!ATTLIST keywords    %global-atts;  class CDATA "- topic/keywords "    >
<!ATTLIST prodinfo    %global-atts;  class CDATA "- topic/prodinfo "    >
<!ATTLIST prodname    %global-atts;  class CDATA "- topic/prodname "    >
<!ATTLIST vrmlist     %global-atts;  class CDATA "- topic/vrmlist "     >
<!ATTLIST vrm         %global-atts;  class CDATA "- topic/vrm "         >
<!ATTLIST brand       %global-atts;  class CDATA "- topic/brand "       >
<!ATTLIST series      %global-atts;  class CDATA "- topic/series "      >
<!ATTLIST platform    %global-atts;  class CDATA "- topic/platform "    >
<!ATTLIST prognum     %global-atts;  class CDATA "- topic/prognum "     >
<!ATTLIST featnum     %global-atts;  class CDATA "- topic/featnum "     >
<!ATTLIST component   %global-atts;  class CDATA "- topic/component "   >
<!ATTLIST othermeta   %global-atts;  class CDATA "- topic/othermeta "   >
<!ATTLIST resourceid  %global-atts;  class CDATA "- topic/resourceid "  >

<!ATTLIST esri_gptoolboxmeta   %global-atts;  class CDATA "- topic/esri_gptoolboxmeta "   >
<!ATTLIST esri_gptoolboxname   %global-atts;  class CDATA "- topic/esri_gptoolboxname "   >
<!ATTLIST esri_gptoolboxlabel   %global-atts;  class CDATA "- topic/esri_gptoolboxlabel "   >
<!ATTLIST esri_gptoolsetmeta   %global-atts;  class CDATA "- topic/esri_gptoolsetmeta "   >
<!ATTLIST esri_gptoolsetname   %global-atts;  class CDATA "- topic/esri_gptoolsetname "   >
<!ATTLIST esri_gptoolmeta      %global-atts;  class CDATA "- topic/esri_gptoolmeta "   >

<!-- ================== End Metadata  ================================ -->