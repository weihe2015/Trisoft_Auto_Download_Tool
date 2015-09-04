<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % esri_arcpymap         "esri_arcpymap"                     >
<!ENTITY % esri_arcpyprolog      "esri_arcpyprolog"                  >


<!ENTITY % esri_arcpysitepackage        "esri_arcpysitepackage"     >
<!ENTITY % esri_arcpyclass              "esri_arcpyclass"     >
<!ENTITY % esri_arcpymodule             "esri_arcpymodule"       >

<!ENTITY % esri_arcpyfunctionref       	"esri_arcpyfunctionref"        >
<!ENTITY % esri_arcpyclassref           "esri_arcpyclassref"        >
<!ENTITY % esri_arcpyconstructorref     "esri_arcpyconstructorref"     	>
<!ENTITY % esri_arcpymethodref          "esri_arcpymethodref"            >
<!ENTITY % esri_arcpyoperatorref        "esri_arcpyoperatorref"            >
<!ENTITY % esri_arcpypropertyref        "esri_arcpypropertyref"        >

<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->

<!ENTITY included-domains ""                                         >

<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->

<!ENTITY % arcpymap-atts 
            'id         ID                                #IMPLIED
             conref     CDATA                             #IMPLIED
             anchorref  CDATA                             #IMPLIED
             outputclass  CDATA                             #IMPLIED
             ishtype CDATA #FIXED "SurpressISHSection"
             %localization-atts;
             %arch-atts;
             domains    CDATA                  "&included-domains;" 
             %topicref-atts;
             %select-atts;' >


<!ENTITY % arcpycollection-atts 
            'navtitle   CDATA                             #IMPLIED
             outputclass  CDATA                             #IMPLIED
             %univ-atts;'        >


<!ENTITY % arcpytopicref-atts 
            'navtitle        CDATA                             #IMPLIED
             href            CDATA                             #IMPLIED
             keyref          CDATA                             #IMPLIED
             copy-to         CDATA                             #IMPLIED
             query      	 CDATA                             #IMPLIED
			 outputclass     CDATA                             #IMPLIED
             %topicref-atts;
             %univ-atts;
             ishtype    CDATA #FIXED "ISHSection"
             ishlinkxpath CDATA #FIXED "@href[not(parent::*/@scope=&apos;external&apos;)]"
             ishlabelxpath CDATA #FIXED "@href[parent::*/@scope=&apos;external&apos;]"' >


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ELEMENT esri_arcpymap ((%title;)?, (%esri_arcpyprolog;)?, 
						(%topicref; |         
						 %esri_arcpysitepackage; |
                         %esri_arcpyfunctionref; | 
                         %esri_arcpypropertyref; | 
                         %esri_arcpyclass; | 
						 %esri_arcpymodule;)*)                       >
<!ATTLIST esri_arcpymap
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             id                 	ID                                #IMPLIED
             conref                 CDATA                             #IMPLIED
             anchorref              CDATA                             #IMPLIED
             outputclass            CDATA                             #IMPLIED
             %localization-atts;
             %arch-atts;
             domains    			CDATA                  "&included-domains;" 
             %topicref-atts;
             %select-atts;                                           >



<!ELEMENT  esri_arcpyprolog  (#PCDATA)                >
<!ATTLIST  esri_arcpyprolog
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             lockmeta   (yes | no | -dita-use-conref-target)	#IMPLIED
             %univ-atts;                                             >


<!ELEMENT esri_arcpysitepackage  ((%topicref; |         
									%esri_arcpyfunctionref; | 
									%esri_arcpypropertyref; | 
									%esri_arcpyclass; | 
									%esri_arcpymodule;)*)            >
<!ATTLIST esri_arcpysitepackage
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %arcpycollection-atts;                                  >
                     

<!ELEMENT esri_arcpymodule       ((%topicref; |
                                   %esri_arcpypropertyref; |  
                                   %esri_arcpyfunctionref; |
								   %esri_arcpyoperatorref; |	
                                   %esri_arcpyclass;)*)  >
<!ATTLIST esri_arcpymodule
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %arcpycollection-atts;                                  >


<!ELEMENT esri_arcpyclass       ((%topicref; | 
								  %esri_arcpyclassref; |
								  %esri_arcpyconstructorref; |
                                  %esri_arcpypropertyref; | 
                                  %esri_arcpymethodref; |
								  %esri_arcpyoperatorref;)*) >
<!ATTLIST esri_arcpyclass
             ishlabelxpath CDATA   #FIXED   "@navtitle | ./navtitle"
             ishlinkxpath CDATA #FIXED "@href[not(parent::*/@scope=&apos;external&apos;)]"
             %arcpycollection-atts;                                  >


<!ELEMENT esri_arcpyfunctionref  (#PCDATA)                 >
<!ATTLIST esri_arcpyfunctionref
             ishlinkxpath CDATA #FIXED "@href[not(ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;)]"
             ishlabelxpath CDATA #FIXED "@href[ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;]"
             %arcpytopicref-atts;                     		>

<!ELEMENT esri_arcpypropertyref  (#PCDATA)                  >
<!ATTLIST esri_arcpypropertyref
             ishlinkxpath CDATA #FIXED "@href[not(ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;)]"
             ishlabelxpath CDATA #FIXED "@href[ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;]"
             %arcpytopicref-atts;                     		>

<!ELEMENT esri_arcpyclassref  (#PCDATA)                 >
<!ATTLIST esri_arcpyclassref
             ishlinkxpath CDATA #FIXED "@href[not(ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;)]"
             ishlabelxpath CDATA #FIXED "@href[ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;]"
             %arcpytopicref-atts;                     		>

<!ELEMENT esri_arcpyconstructorref  (#PCDATA)                 >
<!ATTLIST esri_arcpyconstructorref
             ishlinkxpath CDATA #FIXED "@href[not(ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;)]"
             ishlabelxpath CDATA #FIXED "@href[ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;]"
             %arcpytopicref-atts;                     		>

<!ELEMENT esri_arcpymethodref  (#PCDATA)                 >
<!ATTLIST esri_arcpymethodref
             ishlinkxpath CDATA #FIXED "@href[not(ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;)]"
             ishlabelxpath CDATA #FIXED "@href[ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;]"
             %arcpytopicref-atts;                     		>


<!ELEMENT esri_arcpyoperatorref  (#PCDATA)                 >
<!ATTLIST esri_arcpyoperatorref
             ishlinkxpath CDATA #FIXED "@href[not(ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;)]"
             ishlabelxpath CDATA #FIXED "@href[ancestor::*[@scope and @scope!=&apos;&apos;][position()=1]/@scope=&apos;external&apos;]"
             %arcpytopicref-atts;                     		>




<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!ATTLIST esri_arcpymap     		%global-atts; class CDATA "- map/map esri_arcpymap/esri_arcpymap ">
<!ATTLIST esri_arcpyprolog        	%global-atts; class CDATA "- map/topicmeta esri_arcpymap/esri_arcpyprolog ">

<!ATTLIST esri_arcpysitepackage     %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpysitepackage ">
<!ATTLIST esri_arcpyclass           %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpyclass ">
<!ATTLIST esri_arcpymodule          %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpymodule ">

<!ATTLIST esri_arcpyfunctionref     %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpyfunctionref ">
<!ATTLIST esri_arcpypropertyref     %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpypropertyref ">
<!ATTLIST esri_arcpyclassref        %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpyclassref ">
<!ATTLIST esri_arcpyconstructorref  %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpyconstructorref ">
<!ATTLIST esri_arcpymethodref       %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpymethodref ">
<!ATTLIST esri_arcpyoperatorref     %global-atts; class CDATA "- map/topicref esri_arcpymap/esri_arcpyoperatorref ">

