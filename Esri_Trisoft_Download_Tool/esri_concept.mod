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
 
<!ENTITY % esri_concept         "esri_concept">
<!ENTITY % esri_conbody         "esri_conbody">
<!ENTITY % esri_section1        "esri_section1" >
<!ENTITY % esri_section2        "esri_section2" >
<!ENTITY % esri_section3        "esri_section3" >

<!ENTITY % esri_qabody         "esri_qabody">
<!ENTITY % esri_questionanswers        "esri_questionanswers" >
<!ENTITY % esri_questionanswer          "esri_questionanswer" >
<!ENTITY % esri_question                     "esri_question" >
<!ENTITY % esri_answer                       "esri_answer" >

<!ENTITY % esri_cfgbody         "esri_cfgbody">
<!ENTITY % esri_cfgs               "esri_cfgs" >
<!ENTITY % esri_cfg                 "esri_cfg" >
<!ENTITY % esri_cfgname                     "esri_cfgname" >
<!ENTITY % esri_cfgdesc                       "esri_cfgdesc" >

<!ENTITY % esri_gpmsgbody        "esri_gpmsgbody"> 
<!ENTITY % esri_gpmessages       "esri_gpmessages" >

<!ENTITY % esri_gpmsghd          "esri_gpmsghd" >
<!ENTITY % esri_gpmsgidhd        "esri_gpmsgidhd" >
<!ENTITY % esri_gpmsgmsghd        "esri_gpmsgmsghd" >
<!ENTITY % esri_gpmsgdeschd      "esri_gpmsgdeschd" >
<!ENTITY % esri_gpmsgsolnhd      "esri_gpmsgsolnhd" >

<!ENTITY % esri_gpmsg          "esri_gpmsg" >
<!ENTITY % esri_gpmsgid        "esri_gpmsgid" >
<!ENTITY % esri_gpmsgmsg        "esri_gpmsgmsg" >
<!ENTITY % esri_gpmsgdesc      "esri_gpmsgdesc" >
<!ENTITY % esri_gpmsgsoln      "esri_gpmsgsoln" >

<!ENTITY % esri_broadsheetbody         "esri_broadsheetbody">

<!ENTITY % esri_localnav               "esri_localnav" >
<!ENTITY % esri_breadcrumb             "esri_breadcrumb" >

<!ENTITY % esri_intro                 "esri_intro" >

<!ENTITY % esri_leadstories            "esri_leadstories" >
<!ENTITY % esri_stories                "esri_stories" >

<!ENTITY % esri_story                  "esri_story" >
<!ENTITY % esri_storybyline            "esri_storybyline" >
<!ENTITY % esri_storysummary           "esri_storysummary" >

<!ENTITY % esri_blog                   "esri_blog" >
<!ENTITY % esri_gizmos                 "esri_gizmos" >

<!ENTITY % esri_concept-info-types "%info-types;" >

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


<!--                    LONG NAME: ESRI Concept                         -->
<!ELEMENT esri_concept  ((%title;), (%titlealts;)?, (%shortdesc;), (%esri_prolog;)?, 
                         ((%esri_conbody;) | (%esri_qabody;)  | (%esri_cfgbody;) | (%esri_gpmsgbody;) | (%esri_broadsheetbody;)), 
                                                    (%esri_authornotes;)?, (%esri_concept-info-types;)* )>
<!ATTLIST esri_concept             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                          id     ID     #REQUIRED
                         conref     CDATA     #IMPLIED
                         %select-atts;
                         %localization-atts;
                         %arch-atts;
                          outputclass     CDATA     #IMPLIED
                          domains     CDATA     "&included-domains;">
                          
<!--                    LONG NAME: ESRI Concept Body                    -->
<!ELEMENT esri_conbody     ((%esri_body.cnt;)*, (%esri_section1;)* )  >
<!ATTLIST esri_conbody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
              %id-atts;
              %localization-atts;
              base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_qabody     ((%esri_body.cnt;)*, (%esri_questionanswers;)+)  >
<!ATTLIST esri_qabody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
              %id-atts;
              %localization-atts;
              base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_cfgbody     ((%esri_body.cnt;)*, (%esri_cfgs;)+)  >
<!ATTLIST esri_cfgbody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
              %id-atts;
              %localization-atts;
              base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_broadsheetbody     (((%draft-comment;) | (%esri_intro;) | (%esri_localnav;) | (%esri_leadstories;) | (%esri_stories;) | (%note;) | (%esri_blog;) | (%esri_gizmos;))+)  >
<!ATTLIST esri_broadsheetbody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
              %id-atts;
              %localization-atts;
              base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass    CDATA                            #IMPLIED    >

<!--                    LONG NAME: ESRI Section  1                       -->
<!ELEMENT esri_section1       ((%title;), (%esri_section.notitle.cnt;)*, (%esri_section2;)*)                            >
<!ATTLIST esri_section1         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             %esri_licenserestriction-att;
             outputclass    CDATA                            #IMPLIED    >

<!--                    LONG NAME: ESRI Section  2                       -->
<!ELEMENT esri_section2       ((%title;), (%esri_section.notitle.cnt;)*, (%esri_section3;)*)                            >
<!ATTLIST esri_section2         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             %esri_licenserestriction-att;
             outputclass    CDATA                            #IMPLIED    >

<!--                    LONG NAME: ESRI Section 3                       -->
<!ELEMENT esri_section3       ((%title;), (%esri_section.notitle.cnt;)*)                            >
<!ATTLIST esri_section3         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             %esri_licenserestriction-att;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_questionanswers       ((%title;)*,(%esri_questionanswer;)+)                            >
<!ATTLIST esri_questionanswers         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_questionanswer       ( (%esri_question;),(%esri_answer;))                            >
<!ATTLIST esri_questionanswer         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_question       ( (%esri_section.notitle.cnt;)*)                            >
<!ATTLIST esri_question         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_answer       ( (%esri_section.notitle.cnt;)*)                            >
<!ATTLIST esri_answer         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_cfgs       ((%title;), (%esri_section.notitle.cnt;)*, (%esri_cfg;)+)                            >
<!ATTLIST esri_cfgs         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_cfg       ((%esri_cfgname;), (%esri_cfgdesc;), (%esri_cfg;)*)                            >
<!ATTLIST esri_cfg        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_cfgname       ( #PCDATA)                            >
<!ATTLIST esri_cfgname         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_cfgdesc       ( (%esri_section.notitle.cnt;)*)                            >
<!ATTLIST esri_cfgdesc         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED    >



<!ELEMENT esri_gpmsgbody     (((%draft-comment;) | (%esri_gpmessages;))+)  >
<!ATTLIST esri_gpmsgbody         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
              %id-atts;
              %localization-atts;
              base       CDATA                            #IMPLIED
			  %base-attribute-extensions;
              outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_gpmessages       ((%esri_gpmsghd;), (%esri_gpmsg;)*)             >
<!ATTLIST esri_gpmessages         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                           #IMPLIED
             keycol     NMTOKEN                         #IMPLIED
             refcols    NMTOKENS                        #IMPLIED
             spectitle  CDATA                           #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_gpmsghd      ((%esri_gpmsgidhd;), (%esri_gpmsgmsghd;), (%esri_gpmsgdeschd;), (%esri_gpmsgsolnhd;))                            >
<!ATTLIST esri_gpmsghd       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_gpmsgidhd    (#PCDATA)                             >
<!ATTLIST esri_gpmsgidhd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_gpmsgmsghd    (#PCDATA)                            >
<!ATTLIST esri_gpmsgmsghd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_gpmsgdeschd    (#PCDATA)                            >
<!ATTLIST esri_gpmsgdeschd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_gpmsgsolnhd    (#PCDATA)                            >
<!ATTLIST esri_gpmsgsolnhd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >


<!ELEMENT esri_gpmsg       ((%esri_gpmsgid;), (%esri_gpmsgmsg;), (%esri_gpmsgdesc;), (%esri_gpmsgsoln;))                            >
<!ATTLIST esri_gpmsg         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_gpmsgid      (#PCDATA)                            >
<!ATTLIST esri_gpmsgid 
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_gpmsgmsg      (%p;)                           >
<!ATTLIST esri_gpmsgmsg         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_gpmsgdesc      (%esri_tblcell.cnt;)*                           >
<!ATTLIST esri_gpmsgdesc         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_gpmsgsoln      (%esri_tblcell.cnt;)*                            >
<!ATTLIST esri_gpmsgsoln         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!-- rc broadsheet begin -->
<!ELEMENT esri_intro      (%p;)                           >
<!ATTLIST esri_intro         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_localnav         ((%esri_breadcrumb;)*, (%simpletable;))                                     >
<!ATTLIST esri_localnav           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >

<!ELEMENT esri_breadcrumb         (%xref;)+                                     >
<!ATTLIST esri_breadcrumb           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >


<!ELEMENT esri_leadstories         (((%esri_story;) | (%xref;))+)                                     >
<!ATTLIST esri_leadstories           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
			 esri_href CDATA 								 #IMPLIED
			 esri_style CDATA 								 #IMPLIED
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >

<!ELEMENT esri_stories         (%esri_story;)+                                     >
<!ATTLIST esri_stories           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
			 esri_href CDATA 								 #IMPLIED
			 esri_style CDATA 								 #IMPLIED
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >

<!ELEMENT esri_story         (((%title;) | (%image;) | (%xref;) | (%esri_storybyline;) | (%esri_storysummary;))+ )                                     >
<!ATTLIST esri_story           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >

<!ELEMENT esri_storybyline         (%ph.cnt;)*                                     >
<!ATTLIST esri_storybyline           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >

<!ELEMENT esri_storysummary         (%p;)*                                   >
<!ATTLIST esri_storysummary           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >


<!ELEMENT esri_blog         ((%dl;))                                     >
<!ATTLIST esri_blog           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
			       esri_href CDATA 								 #IMPLIED
			       esri_morelink CDATA 								             #IMPLIED
			       esri_style CDATA 								 #IMPLIED
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >

<!ELEMENT esri_gizmos         (%fig;)*                                     >
<!ATTLIST esri_gizmos           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
			 esri_href CDATA 								 #IMPLIED
			 esri_style CDATA 								 #IMPLIED
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >

<!-- rc broadsheet end -->

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_concept       %global-atts;  class  CDATA "- topic/topic concept/concept esri_concept/esri_concept ">
<!ATTLIST esri_conbody      %global-atts;   class  CDATA "- topic/body concept/conbody esri_concept/esri_conbody ">
<!ATTLIST esri_section1      %global-atts;  class  CDATA "- topic/section   esri_concept/esri_section1 ">
<!ATTLIST esri_section2      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_section2 ">
<!ATTLIST esri_section3      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_section3 ">

<!ATTLIST esri_qabody      %global-atts;   class  CDATA "- topic/body esri_concept/esri_qabody ">
<!ATTLIST esri_questionanswers      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_questionanswers ">
<!ATTLIST esri_questionanswer      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_questionanswer ">
<!ATTLIST esri_question      %global-atts;   class  CDATA "- topic/p   esri_concept/esri_question ">
<!ATTLIST esri_answer      %global-atts;   class  CDATA "- topic/p   esri_concept/esri_answer ">

<!ATTLIST esri_cfgbody      %global-atts;   class  CDATA "- topic/body  esri_concept/esri_cfgbody ">
<!ATTLIST esri_cfgs      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_cfgs ">
<!ATTLIST esri_cfg      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_cfg ">
<!ATTLIST esri_cfgname      %global-atts;   class  CDATA "- topic/ph   esri_concept/esri_cfgname ">
<!ATTLIST esri_cfgdesc      %global-atts;   class  CDATA "- topic/p   esri_concept/esri_cfgdesc ">


<!ATTLIST esri_gpmsgbody       %global-atts;    class  CDATA "- topic/body esri_concept/esri_gpmsgbody ">

<!ATTLIST esri_gpmessages      %global-atts;    class  CDATA "- topic/simpletable  esri_concept/esri_gpmessages ">

<!ATTLIST esri_gpmsghd         %global-atts;    class  CDATA "- topic/sthead   esri_concept/esri_gpmsghd ">
<!ATTLIST esri_gpmsgidhd       %global-atts;    class  CDATA "- topic/stentry  esri_concept/esri_gpmsgidhd ">
<!ATTLIST esri_gpmsgmsghd       %global-atts;    class  CDATA "- topic/stentry  esri_concept/esri_gpmsgmsghd ">
<!ATTLIST esri_gpmsgdeschd     %global-atts;    class  CDATA "- topic/stentry  esri_concept/esri_gpmsgdeschd ">
<!ATTLIST esri_gpmsgsolnhd     %global-atts;    class  CDATA "- topic/stentry  esri_concept/esri_gpmsgsolnhd ">

<!ATTLIST esri_gpmsg           %global-atts;    class  CDATA "- topic/strow    esri_concept/esri_gpmsg ">
<!ATTLIST esri_gpmsgid         %global-atts;    class  CDATA "- topic/stentry  esri_concept/esri_gpmsgid ">
<!ATTLIST esri_gpmsgmsg         %global-atts;    class  CDATA "- topic/stentry  esri_concept/esri_gpmsgmsg ">
<!ATTLIST esri_gpmsgdesc       %global-atts;    class  CDATA "- topic/stentry  esri_concept/esri_gpmsgdesc ">
<!ATTLIST esri_gpmsgsoln       %global-atts;    class  CDATA "- topic/stentry  esri_concept/esri_gpmsgsoln ">

<!ATTLIST esri_broadsheetbody      %global-atts;   class  CDATA "- topic/body esri_concept/esri_broadsheetbody ">

<!ATTLIST esri_intro      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_intro ">
<!ATTLIST esri_localnav      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_localnav ">
<!ATTLIST esri_breadcrumb      %global-atts;   class  CDATA "- topic/p   esri_concept/esri_breadcrumb ">

<!ATTLIST esri_leadstories      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_leadstories ">
<!ATTLIST esri_stories      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_stories ">

<!ATTLIST esri_story      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_story ">
<!ATTLIST esri_storybyline      %global-atts;   class  CDATA "- topic/ph   esri_concept/esri_storybyline ">
<!ATTLIST esri_storysummary      %global-atts;   class  CDATA "- topic/p   esri_concept/esri_storysummary ">

<!ATTLIST esri_blog      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_blog ">
<!ATTLIST esri_gizmos      %global-atts;   class  CDATA "- topic/section   esri_concept/esri_gizmos ">

<!-- ================== End DITA Concept  ======================== -->


