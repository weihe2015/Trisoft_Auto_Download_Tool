<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % esri_video               "esri_video"                          >
<!ENTITY % esri_webapp              "esri_webapp"                          >
<!ENTITY % esri_gizmo_textbox       "esri_gizmo_textbox"                          >
<!ENTITY % esri_gizmo_rssbox        "esri_gizmo_rssbox"                          >


<!-- ============================================================= -->
<!--                    ATTRIBUTE DECLARATIONS                       -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!ELEMENT esri_video         ((%image;)*, (%alt;)?, (%esri_caption;)?) >
<!ATTLIST esri_video           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
      			 esri_href CDATA 								 #IMPLIED
             esri_linkonly  (yes | no) "no" 
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts; 
             %esri_layout-atts;                                           >


<!ELEMENT esri_webapp         ((%image;)*, (%alt;)?, (%esri_caption;)?)                                     >
<!ATTLIST esri_webapp           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
			 esri_href CDATA 								 #IMPLIED
			 esri_style CDATA 								 #IMPLIED
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            
             %esri_layout-atts;                                           >

<!ELEMENT esri_gizmo_textbox         ((%title;), (%p;))                                     >
<!ATTLIST esri_gizmo_textbox           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            
             esri_display  (hide | show)     "show"         
             esri_type ( basic | newsticker | quicklinks | twitterprofile | twittersearch) "basic"
             esri_twitterprofile CDATA        #IMPLIED
             esri_twittersearch   CDATA        #IMPLIED
             esri_twitterappid   CDATA        #IMPLIED >

<!ELEMENT esri_gizmo_rssbox         ((%title;), (%dl;))     >
<!ATTLIST esri_gizmo_rssbox           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;
      			 esri_morelink CDATA 								             #IMPLIED
             esri_display  (hide | show)     "show"
      			 esri_rsstype  (blog | forum | idea | support | other)     #IMPLIED			 >

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_video         %global-atts;     class CDATA "+ topic/fig esri_widget-d/esri_video "  >
<!ATTLIST esri_webapp         %global-atts;     class CDATA "+ topic/fig esri_widget-d/esri_webapp "  >
<!ATTLIST esri_gizmo_textbox         %global-atts;     class CDATA "+ topic/fig esri_widget-d/esri_gizmo_textbox "  >
<!ATTLIST esri_gizmo_rssbox         %global-atts;     class CDATA "+ topic/fig esri_widget-d/esri_gizmo_rssbox "  >
