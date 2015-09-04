<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % esri_codeblock    "esri_codeblock"                     >
<!ENTITY % esri_codeblockdesc    "esri_codeblockdesc"                     >
<!ENTITY % esri_codeblockbody    "esri_codeblockbody"                     >

<!ENTITY % esri_equation    "esri_equation"                     >

<!ENTITY % esri_image     	 "esri_image"                      >
<!ENTITY % esri_caption     "esri_caption"                      >
<!ENTITY % esri_sidebysidemedia         "esri_sidebysidemedia"                          >

<!ENTITY % esri_flash         "esri_flash"                          >
<!ENTITY % esri_pdf             "esri_pdf"                          >

<!ENTITY % esri_externalfile        "esri_externalfile"                          >

<!ENTITY % esri_glossary     "esri_glossary"                      >

<!ENTITY % esri_gptoolref       "esri_gptoolref"                      >
<!ENTITY % esri_arcpyref        "esri_arcpyref"                      >

<!ENTITY % esri_modelbuilder        "esri_modelbuilder"                      >

<!ENTITY % esri_note         "esri_note"                          >

<!ENTITY % esri_callout      "esri_callout"                          >

<!ENTITY % esri_seealso    "esri_seealso"                     >


<!ENTITY % esri_sqltableinfo    "esri_sqltableinfo"                     >
<!ENTITY % esri_fields        "esri_fields">
<!ENTITY % esri_fldhead                 "esri_fldhead">
<!ENTITY % esri_fldnamehd      	    "esri_fldnamehd">
<!ENTITY % esri_flddeschd      	    "esri_flddeschd">
<!ENTITY % esri_fldtypehd      	    "esri_fldtypehd">
<!ENTITY % esri_fldnullhd      	    "esri_fldnullhd">
<!ENTITY % esri_fldrow      	    "esri_fldrow">
<!ENTITY % esri_fldname      	    "esri_fldname">
<!ENTITY % esri_flddesc                 "esri_flddesc">
<!ENTITY % esri_fldtype                   "esri_fldtype">
<!ENTITY % esri_fldnull      	    "esri_fldnull">

<!ENTITY % esri_gallery                "esri_gallery" >


<!-- ============================================================= -->
<!--                    ATTRIBUTE DECLARATIONS                       -->
<!-- ============================================================= -->
<!ENTITY % esri_codeblocktype-atts
            'esri_codeblocktype  (actionscript | c | cpp | commandline | csharp | java | javascript | objectivec | objectivej | other | python | qml | sql | swift | vb | xaml | xml |  -dita-use-conref-target)    "other"    ' >

<!-- tchen: this info is in toolboxes.xsl VSS: workspace/tchen/dh_gptools-->
<!ENTITY % esri_tbxalias-atts
            'esri_tbxalias  (none |
                                    3d |
                                    aeronautical | aeronauticalmanagement | ais | analysis | arc |archydro | arcpad |
                                    ba | bathymetry |
                                    cadastral | cartography | conversion |
                                    defense | di | dod |
                                    edit | 
                                    fabric | foundation |
                                    ga | geocoding |
                                    lr |
                                    ma | management | mb | md | mildefense | mobile | mole | mpsatlas |
                                    na | nautical |
									production |
                                    reviewer | roads |
                                    sa | samples | schematics | sdc | server | stats | 
                                    ta | territorydesign |
                                    -dita-use-conref-target)    "none"    ' >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Code Block                      -->
<!ELEMENT esri_codeblock       ((%title;)?, (%esri_codeblockdesc;)?, 
								((%esri_codeblockbody;)), 
								(%esri_keywords;)?)        >
<!ATTLIST esri_codeblock         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             %esri_codeblocktype-atts;
             outputclass    CDATA                            #IMPLIED    >

<!ELEMENT esri_codeblockdesc       (%esri_section.notitle.cnt;)*                            >
<!ATTLIST esri_codeblockdesc         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
            %univ-atts;
             outputclass    CDATA                            #IMPLIED    >
             
<!ELEMENT esri_codeblockbody     (#PCDATA | %basic.ph.notm; | %txt.incl;)*                    >
<!ATTLIST esri_codeblockbody       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %display-atts;
             xml:space  (preserve)                #FIXED 'preserve'
             %univ-atts;
             outputclass CDATA                            #IMPLIED    >


<!ELEMENT esri_equation    (#PCDATA | %basic.ph.notm; | %txt.incl;)*                    >
<!ATTLIST esri_equation       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %display-atts;
             xml:space  (preserve)                #FIXED 'preserve'
             %univ-atts;
             outputclass CDATA                            #IMPLIED    >

<!ELEMENT esri_glossary       (#PCDATA | %tm; | %b; | %i; | %u; | %tt; | %sup; | %sub;)*                            >
<!ATTLIST esri_glossary            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             esri_overrideterm             CDATA    #IMPLIED
             outputclass  CDATA                            #IMPLIED >
<!-- !ATTLIST esri_glossary            
             href       CDATA                            #IMPLIED
             keyref     CDATA                            #IMPLIED
             type       CDATA                            #IMPLIED
             %univ-atts;
             format     CDATA                            #IMPLIED
             scope      (local | peer | external | 
                         -dita-use-conref-target)        #IMPLIED
             outputclass     CDATA                            #IMPLIED    
             ishhyperlinkxpath CDATA #FIXED "@href[not(./@scope=&apos;external&apos;)]" -->


<!ELEMENT esri_gptoolref       (#PCDATA | %xref;)*                            >
<!ATTLIST esri_gptoolref            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             %esri_tbxalias-atts;
             outputclass  CDATA                            #IMPLIED >


<!ELEMENT esri_arcpyref       (#PCDATA | %xref;)*                            >
<!ATTLIST esri_arcpyref            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass  CDATA                            #IMPLIED >

<!ELEMENT esri_modelbuilder       (#PCDATA | %xref;)*                            >
<!ATTLIST esri_modelbuilder            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             outputclass  CDATA                            #IMPLIED >


<!ELEMENT esri_note          (%esri_note.cnt;)*                                >
<!ATTLIST esri_note            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             esri_notetype       ( beta | casestudy | caution | divein | legacy  | license | note  | subscription | tip |  -dita-use-conref-target)        #IMPLIED             
             spectitle  CDATA                            #IMPLIED
             othertype  CDATA                            #IMPLIED
             %univ-atts;
             outputclass  CDATA                            #IMPLIED    >

<!ELEMENT esri_callout          ( %esri_section.cnt; )*                                >
<!ATTLIST esri_callout            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             spectitle  CDATA                            #IMPLIED
             othertype  CDATA                            #IMPLIED
             %univ-atts;
             outputclass  CDATA                            #IMPLIED    
             %esri_layout-atts;                                           >

<!ELEMENT esri_image         ((%image;), (%alt;), (%esri_caption;)?)                                     >
<!ATTLIST esri_image           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
              esri_imageplacement  (break | inline |   -dita-use-conref-target)        "inline"
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;
             %esri_layout-atts;                                            >

<!ELEMENT esri_caption            (%words.cnt; | %pre; | %xref;)*    >
<!ATTLIST esri_caption             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                     %univ-atts;
                     outputclass CDATA #IMPLIED        >

<!ELEMENT esri_sidebysidemedia         ((%esri_image;)+, (%esri_caption;)?)                                     >
<!ATTLIST esri_sidebysidemedia           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;
             esri_orientation  (horizontal | vertical |  -dita-use-conref-target)        "horizontal"
             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                            >

<!ELEMENT esri_flash            (#PCDATA | %basic.ph.notm;)*    >
<!ATTLIST esri_flash             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                     %univ-atts;
                     %ish-variables-atts;
                     esri_filelocation         CDATA     #IMPLIED
                     outputclass     CDATA     #IMPLIED        >

<!ELEMENT esri_pdf            (%esri_xreftext.cnt;)*    >
<!ATTLIST esri_pdf             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                     %univ-atts;
                     %ish-variables-atts;
                     esri_filelocation         CDATA     #IMPLIED
                     outputclass CDATA #IMPLIED        >


<!ELEMENT esri_externalfile            (%ph.cnt;)*    >
<!ATTLIST esri_externalfile             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                     %univ-atts;
                     %ish-variables-atts;
                     esri_filelocation         CDATA     #IMPLIED
                     esri_webhelpref       CDATA    #IMPLIED
                     esri_dstfolder            CDATA     #IMPLIED
                     outputclass CDATA #IMPLIED        >


<!ELEMENT esri_seealso            ((%xref;)*)    >
<!ATTLIST esri_seealso             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                    %display-atts;
                     %univ-atts;
                     spectitle  CDATA                            #IMPLIED
                     xml:space  (preserve)               #FIXED 'preserve'
                     outputclass CDATA #IMPLIED        >


<!ELEMENT esri_sqltableinfo            ((%title;), (%esri_section.notitle.cnt; | %esri_fields;)*)    >
<!ATTLIST esri_sqltableinfo             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
                     %univ-atts;
                     outputclass CDATA #IMPLIED        >

<!ELEMENT esri_fields   ((%esri_fldhead;), (%esri_fldrow;)+ )                   >
<!ATTLIST esri_fields     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                            #IMPLIED
             keycol     NMTOKEN                          "1"
             refcols    NMTOKENS                         #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_fldhead        ((%esri_fldnamehd;), (%esri_fldtypehd;), (%esri_flddeschd;), (%esri_fldnullhd;))              >
<!ATTLIST esri_fldhead         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_fldnamehd    (#PCDATA)                             >
<!ATTLIST esri_fldnamehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;
            outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_flddeschd    (#PCDATA)                             >
<!ATTLIST esri_flddeschd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_fldtypehd    (#PCDATA)                             >
<!ATTLIST esri_fldtypehd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_fldnullhd    (#PCDATA)                             >
<!ATTLIST esri_fldnullhd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!ELEMENT esri_fldrow         ((%esri_fldname;), (%esri_fldtype;), (%esri_flddesc;), (%esri_fldnull;))                  >
<!ATTLIST esri_fldrow        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_fldname        (#PCDATA)>
<!ATTLIST esri_fldname                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
            translate (yes | no | -dita-use-conref-target)           "no"             
             %univ-atts; 
            outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_fldtype        (#PCDATA)>
<!ATTLIST esri_fldtype                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
            translate (yes | no | -dita-use-conref-target)           "no"             
             %univ-atts; 
            outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_flddesc        (%esri_tblcell.cnt;)*>
<!ATTLIST esri_flddesc                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts; 
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_fldnull        (#PCDATA)>
<!ATTLIST esri_fldnull                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             translate (yes | no | -dita-use-conref-target)           "no"             
             %univ-atts; 
            esri_nullable    (not_null)                #IMPLIED
            outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_gallery         ((%p;)*)                                     >
<!ATTLIST esri_gallery           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;

			       esri_morelink CDATA 								             #IMPLIED
			       esri_searchlink CDATA 								           #IMPLIED
			       esri_style CDATA 								               #IMPLIED
             esri_type (arcgis | video | videosidebar)       #IMPLIED
             esri_eachrow (one | two | three | four | five | six)  #IMPLIED

             outputclass    CDATA                            #IMPLIED  
             %ish-variables-atts;                                           
             %esri_layout-atts;                                           >


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_codeblock    %global-atts;    class CDATA "+ topic/pre esri_general-d/esri_codeblock "    >
<!ATTLIST esri_codeblockdesc    %global-atts;    class CDATA "+ topic/p esri_general-d/esri_codeblockdesc "    >
<!ATTLIST esri_codeblockbody    %global-atts;    class CDATA "+ topic/pre esri_general-d/esri_codeblockbody "    >

<!ATTLIST esri_equation    %global-atts;    class CDATA "+ topic/pre esri_general-d/esri_equation "    >

<!ATTLIST esri_image         %global-atts;     class CDATA "+ topic/fig esri_general-d/esri_image "  >
<!ATTLIST esri_caption    %global-atts;    class CDATA "+ topic/alt esri_general-d/esri_caption "    >
<!ATTLIST esri_sidebysidemedia    %global-atts;    class CDATA "+ topic/fig esri_general-d/esri_sidebysidemedia "    >

<!ATTLIST esri_flash         %global-atts;        class CDATA     "+ topic/xref esri_general-d/esri_flash "  >
<!ATTLIST esri_pdf             %global-atts;       class CDATA     "+ topic/xref esri_general-d/esri_pdf "  >


<!ATTLIST esri_glossary     %global-atts;     class CDATA "+ topic/keyword esri_general-d/esri_glossary "  >
<!ATTLIST esri_externalfile     %global-atts;     class CDATA "+ topic/ph esri_general-d/esri_externalfile "  >

<!ATTLIST esri_gptoolref      %global-atts;     class CDATA "+ topic/keyword esri_general-d/esri_gptoolref "  >
<!ATTLIST esri_arcpyref      %global-atts;     class CDATA "+ topic/keyword esri_general-d/esri_arcpyref "  >

<!ATTLIST esri_modelbuilder      %global-atts;     class CDATA "+ topic/keyword esri_general-d/esri_modelbuilder "  >


<!-- !ATTLIST esri_glossary     %global-atts;     class CDATA "+ topic/xref esri_general-d/esri_glossary "  -->


<!ATTLIST esri_note         %global-atts;        class CDATA "+ topic/note esri_general-d/esri_note "  >

<!ATTLIST esri_callout         %global-atts;        class CDATA "+ topic/note esri_general-d/esri_callout "  >

<!ATTLIST esri_gallery      %global-atts;       class  CDATA "+ topic/note esri_general-d/esri_gallery ">

<!ATTLIST esri_seealso         %global-atts;        class CDATA "+ topic/ul esri_general-d/esri_seealso "  >


<!ATTLIST esri_sqltableinfo         %global-atts;                         class CDATA "+ topic/fig esri_general-d/esri_sqltableinfo "  >
<!ATTLIST esri_fields           %global-atts;                                  class  CDATA "+ topic/simpletable  esri_general-d/esri_fields ">
<!ATTLIST esri_fldhead                         %global-atts;                class  CDATA "+ topic/sthead  esri_general-d/esri_fldhead ">
<!ATTLIST esri_fldnamehd             %global-atts;                     class  CDATA "+ topic/stentry  esri_general-d/esri_fldnamehd ">
<!ATTLIST esri_flddeschd             %global-atts;                     class  CDATA "+ topic/stentry  esri_general-d/esri_flddeschd ">
<!ATTLIST esri_fldtypehd             %global-atts;                     class  CDATA "+ topic/stentry  esri_general-d/esri_fldtypehd ">
<!ATTLIST esri_fldnullhd             %global-atts;                     class  CDATA "+ topic/stentry  esri_general-d/esri_fldnullhd ">
<!ATTLIST esri_fldrow              %global-atts;                        class  CDATA "+ topic/strow  esri_general-d/esri_fldrow ">
<!ATTLIST esri_fldname                %global-atts;                      class  CDATA "+ topic/stentry  esri_general-d/esri_fldname ">
<!ATTLIST esri_flddesc                %global-atts;                      class  CDATA "+ topic/stentry  esri_general-d/esri_flddesc ">
<!ATTLIST esri_fldtype                %global-atts;                      class  CDATA "+ topic/stentry  esri_general-d/esri_fldtype ">
<!ATTLIST esri_fldnull                %global-atts;                      class  CDATA "+ topic/stentry  esri_general-d/esri_fldnull ">
