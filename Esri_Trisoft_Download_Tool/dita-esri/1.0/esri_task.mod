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

<!ENTITY % esri_task          "esri_task"                                        >

<!ENTITY % esri_taskbody      "esri_taskbody"                                    >

<!ENTITY % esri_steps         "esri_steps"                                       >
<!ENTITY % esri_stepinfo          "esri_stepinfo"                                        >
<!ENTITY % esri_step          "esri_step"                                        >
<!ENTITY % esri_cmd           "esri_cmd"                                         >
<!ENTITY % esri_substeps      "esri_substeps"                                    >
<!ENTITY % esri_substep       "esri_substep"                                     >

<!ENTITY % esri_info          "esri_info"                                        >
<!ENTITY % esri_stepexample   "esri_stepexample"                                 >
<!ENTITY % esri_stepresult    "esri_stepresult"                                  >

<!ENTITY % esri_result        "esri_result"                                      >
<!ENTITY % esri_prereq        "esri_prereq"                                      >
<!ENTITY % esri_postreq       "esri_postreq"                                     >
<!ENTITY % esri_context       "esri_context"                                     >

<!ENTITY % esri_choices       "esri_choices"                                     >
<!ENTITY % esri_choice        "esri_choice"                                      >

<!ENTITY % esri_choicetable   "esri_choicetable"                                 >
<!ENTITY % esri_chhead        "esri_chhead"                                      >
<!ENTITY % esri_chrow         "esri_chrow"                                       >
<!ENTITY % esri_choptionhd    "esri_choptionhd"                                  >
<!ENTITY % esri_chdeschd      "esri_chdeschd"                                    >
<!ENTITY % esri_choption      "esri_choption"                                    >
<!ENTITY % esri_chdesc        "esri_chdesc"                                      >


<!-- ============================================================= -->
<!--                    SHARED ATTRIBUTE LISTS                     -->
<!-- ============================================================= -->


<!--                    Provide an alternative set of univ-atts 
                        that allows importance to be redefined 
                        locally                                    -->
<!ENTITY % esri_univ-atts-no-importance-task
            '%id-atts;
             %filter-atts;
             %ish-condition-atts;
             base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             rev        CDATA                            #IMPLIED
             status     (changed | deleted | new |  unchanged |  -dita-use-conref-target)        #IMPLIED
             %localization-atts;                                 '   >

<!ENTITY % esri_task-info-types "%info-types;" >

<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->

<!ENTITY included-domains "">

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: ESRI Task                            -->
<!ELEMENT esri_task         ((%title;), (%titlealts;)?, (%shortdesc;), (%esri_prolog;)?, (%esri_taskbody;), 
                         (%esri_authornotes;)?, (%esri_task-info-types;)* )  >
<!ATTLIST esri_task            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             id         ID                               #REQUIRED
             conref     CDATA                            #IMPLIED
             %select-atts;
             %localization-atts;
             %arch-atts;
             outputclass     CDATA                            #IMPLIED
             domains    CDATA                "&included-domains;"    >


<!--                    LONG NAME: ESRI Task Body                       -->
<!ELEMENT esri_taskbody      ((%esri_prereq;)?, (%esri_context;)? ,
                                                     (%esri_steps;)?,  (%esri_migration;)*, 
                                                     (%esri_result;)? , (%esri_postreq;)?)    >
<!ATTLIST esri_taskbody        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %id-atts;
             %localization-atts;
             base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Prerequisites                   -->
<!ELEMENT esri_prereq        (%esri_section.notitle.cnt;)*                     >
<!ATTLIST esri_prereq        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Context                         -->
<!ELEMENT esri_context       (%esri_section.notitle.cnt;)*                     >
<!ATTLIST esri_context        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Steps                           -->
<!ELEMENT esri_steps         (((%esri_step;) | (%esri_stepinfo;))+)                                  >
<!ATTLIST esri_steps         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >

<!ELEMENT esri_stepinfo            (%esri_itemgroup.cnt;)*                                 >
<!ATTLIST esri_stepinfo             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Step                            -->
<!ELEMENT esri_step          ((%esri_cmd;), 
                              (%esri_info;  |%esri_substeps;  |  %esri_stepexample;  | %esri_choicetable; | %esri_choices;)*, 
                                                 (%esri_stepresult;)? )                           >
<!ATTLIST esri_step            
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             importance (optional | required |  -dita-use-conref-target)        #IMPLIED
             %esri_univ-atts-no-importance-task;                                  
             outputclass CDATA                            #IMPLIED    >


<!--                    LONG NAME: Command                         -->
<!ELEMENT esri_cmd           (%esri_ph.cnt;)*                                  >
<!ATTLIST esri_cmd             
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Information                     -->
<!ELEMENT esri_info          (%esri_itemgroup.cnt;)*                           >
<!ATTLIST esri_info           
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Sub-steps                       -->
<!ELEMENT esri_substeps      (%esri_substep; | %esri_migration;)+                                 >
<!ATTLIST esri_substeps       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Sub-step                        -->
<!ELEMENT esri_substep       ((%esri_cmd;),  
                                (%esri_info; | %esri_stepexample;)*, 
                                (%esri_stepresult;)? )                           >
<!ATTLIST esri_substep         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             importance (optional | required |  -dita-use-conref-target)        #IMPLIED
             %esri_univ-atts-no-importance-task;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Step Example                    -->
<!ELEMENT esri_stepexample       (%esri_itemgroup.cnt;)*                           >
<!ATTLIST esri_stepexample       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Step Result                     -->
<!ELEMENT esri_stepresult    (%esri_itemgroup.cnt;)*                           >
<!ATTLIST esri_stepresult    
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choices                         -->
<!ELEMENT esri_choices       ((%esri_choice;)+)                                >
<!ATTLIST esri_choices       
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice                          -->
<!ELEMENT esri_choice        (%esri_listitem.cnt;)*                            >
<!ATTLIST esri_choice          
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass    CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Table                    -->
<!ELEMENT esri_choicetable   ((%esri_chhead;), (%esri_chrow;)+ )                   >
<!ATTLIST esri_choicetable     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             relcolwidth     CDATA                            #IMPLIED
             keycol     NMTOKEN                          "1"
             refcols    NMTOKENS                         #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %display-atts;
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Head                     -->
<!ELEMENT esri_chhead        ((%esri_choptionhd;), (%esri_chdeschd;) )              >
<!ATTLIST esri_chhead         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Option Head              -->
<!ELEMENT esri_choptionhd    (#PCDATA)                             >
<!ATTLIST esri_choptionhd     
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Description Head         -->
<!ELEMENT esri_chdeschd      (#PCDATA)                             >
<!ATTLIST esri_chdeschd      
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                           #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Row                      -->
<!ELEMENT esri_chrow         ((%esri_choption;), (%esri_chdesc;) )                  >
<!ATTLIST esri_chrow        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Option                   -->
<!ELEMENT esri_choption      (%esri_tblcell.cnt;)*>
<!ATTLIST esri_choption        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Choice Description              -->
<!ELEMENT esri_chdesc        (%esri_tblcell.cnt;)*>
<!ATTLIST esri_chdesc                
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             specentry  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Result                          -->
<!ELEMENT esri_result        (%esri_section.notitle.cnt;)*                     >
<!ATTLIST esri_result         
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >


<!--                    LONG NAME: Post Requirements               -->
<!ELEMENT esri_postreq       (%esri_section.notitle.cnt;)*                     >
<!ATTLIST esri_postreq        
             ishlabelxpath CDATA #FIXED "./title | @alt | @href | @conref | self::*[@id and not(@varid)]/@id"
             ishlinkxpath CDATA #FIXED "@conref | @href[contains(parent::*/@class,&apos; topic/image &apos;) and not(parent::*/@conref)]"
             %univ-atts;                                  
             outputclass     CDATA                            #IMPLIED    >
             

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST esri_task        %global-atts;  class  CDATA "- topic/topic task/task esri_task/esri_task "        >

<!ATTLIST esri_taskbody    %global-atts;  class  CDATA "- topic/body task/taskbody esri_task/esri_taskbody "     >

<!ATTLIST esri_steps       %global-atts;  class  CDATA "- topic/ol task/steps esri_task/esri_steps "          >
<!ATTLIST esri_stepinfo   %global-atts;  class  CDATA "- topic/itemgroup task/info esri_task/esri_stepinfo "           >
<!ATTLIST esri_step        %global-atts;  class  CDATA "- topic/li task/step esri_task/esri_step "           >
<!ATTLIST esri_cmd         %global-atts;  class  CDATA "- topic/ph task/cmd esri_task/esri_cmd "            >
<!ATTLIST esri_substeps    %global-atts;  class  CDATA "- topic/ol task/substeps esri_task/esri_substeps "       >
<!ATTLIST esri_substep     %global-atts;  class  CDATA "- topic/li task/substep esri_task/esri_substep "        >

<!ATTLIST esri_info        %global-atts;  class  CDATA "- topic/itemgroup task/info esri_task/esri_info "    >
<!ATTLIST esri_stepexample     %global-atts;  class  CDATA "- topic/itemgroup task/stepxmp esri_task/esri_stepexample " >
<!ATTLIST esri_stepresult  %global-atts;  class  CDATA "- topic/itemgroup task/stepresult esri_task/esri_stepresult ">

<!ATTLIST esri_result       %global-atts;  class  CDATA "- topic/section task/result esri_task/esri_result "   >
<!ATTLIST esri_prereq      %global-atts;  class  CDATA "- topic/section task/prereq esri_task/esri_prereq "    >
<!ATTLIST esri_postreq     %global-atts;  class  CDATA "- topic/section task/postreq esri_task/esri_postreq "   >
<!ATTLIST esri_context     %global-atts;  class  CDATA "- topic/section task/context esri_task/esri_context "   >

<!ATTLIST esri_choices     %global-atts;  class  CDATA "- topic/ul task/choices esri_task/esri_choices "        >
<!ATTLIST esri_choice      %global-atts;  class  CDATA "- topic/li task/choice esri_task/esri_choice "         >

<!ATTLIST esri_choicetable %global-atts;  class  CDATA "- topic/simpletable task/choicetable esri_task/esri_choicetable ">
<!ATTLIST esri_chhead      %global-atts;  class  CDATA "- topic/sthead task/chhead esri_task/esri_chhead "     >
<!ATTLIST esri_chrow       %global-atts;  class  CDATA "- topic/strow task/chrow esri_task/esri_chrow "       >
<!ATTLIST esri_choptionhd  %global-atts;  class  CDATA "- topic/stentry task/choptionhd esri_task/esri_choptionhd ">
<!ATTLIST esri_chdeschd    %global-atts;  class  CDATA "- topic/stentry task/chdeschd esri_task/esri_chdeschd "  >
<!ATTLIST esri_choption    %global-atts;  class  CDATA "- topic/stentry task/choption esri_task/esri_choption "  >
<!ATTLIST esri_chdesc      %global-atts;  class  CDATA "- topic/stentry task/chdesc esri_task/esri_chdesc "    >

 


 

 
<!-- ================== End DITA Concept  ======================== -->




