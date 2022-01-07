<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <!--                                           -->
    <!-- Any title is fine                         -->
    <!--                                           -->
    <title><%=(String)request.getSession().getAttribute("strTitle") %></title>
    
	
    <!-- IMPORTANT : You must set the variable isomorphicDir to [MODULE_NAME]/sc/ so that the SmartGWT resource are 
	  correctly resolved -->	
	<SCRIPT> var isomorphicDir = "gwt/sc/"</SCRIPT>	
	<SCRIPT SRC="gwt/sc/modules/ISC_Core.js"></SCRIPT>
 	<SCRIPT SRC="gwt/sc/modules/ISC_Foundation.js"></SCRIPT>
 	<SCRIPT SRC="gwt/sc/modules/ISC_Containers.js"></SCRIPT>
 	<SCRIPT SRC="gwt/sc/modules/ISC_Grids.js"></SCRIPT>
	<SCRIPT SRC="gwt/sc/modules/ISC_Forms.js"></SCRIPT>
	<SCRIPT SRC="gwt/sc/modules/ISC_DataBinding.js"></SCRIPT>
	<SCRIPT SRC='gwt/sc/modules/ISC_RichTextEditor.js'></SCRIPT>
	
	<link href="/VD/AC/slider/themes/4/js-image-slider.css" rel="stylesheet" type="text/css" />
    <SCRIPT SRC="/VD/AC/slider/themes/4/js-image-slider.js" type="text/javascript"></SCRIPT>
	<SCRIPT SRC="/VD/AC/skins/<%=(String)request.getSession().getAttribute("strColorScheme") %>/skin_styles.js"></SCRIPT>
	<SCRIPT SRC="/VD/AC/skins/<%=(String)request.getSession().getAttribute("strColorScheme") %>/load_skin.js"></SCRIPT>
	<script type="text/javascript" charset="UTF-8" src="/VD/AC/ckeditor/ckeditor.js"></script> 
	
	
    <!--                                           -->
    <!-- This script loads your compiled module.   -->
    <!-- If you add any GWT meta tags, they must   -->
    <!-- be added before this line.                -->
    <!--                                           -->      
    <SCRIPT type="text/javascript" language="javascript" src="gwt/gwt.nocache.js"></SCRIPT>
  </head>

  <!--                                           -->
  <!-- The body can have arbitrary html, or      -->
  <!-- you can leave the body empty if you want  -->
  <!-- to create a completely dynamic UI.        -->
  <!--                                           -->
  <body>

    <!--load the datasources -->
     <SCRIPT src="gwt/sc/DataSourceLoader?dataSource=FWMenu,FWLabel,AWCUserSecurityProperties,ESCatalog,ESOrderStatus,ESOrderStatusDetails,FSFiltersetDefinition"></SCRIPT>
     <SCRIPT src="gwt/sc/DataSourceLoader?dataSource=ESOrderedItem,ESOrderPacking,ESAddressBook,ESTemplateOrder,SCMUser,AWCScreenProperties,LWProject,LWItem,CHLogs,supplierDS,cloneDS,upload,ESAddressLocations,ESINVItem,ESLogin,AWCDropDown"></SCRIPT>
     <SCRIPT src="gwt/sc/DataSourceLoader?dataSource=ESCheckOut,ESContactUs,ESChangePassword,ESAnnouncement,ESDownloadDocument,ESManageAnnouncement,SECAccessPolicy,SECEventHistory,SECUserAccountDetail"></SCRIPT>
     
     <!--  SCEA DS -->
     <SCRIPT src="gwt/sc/DataSourceLoader?dataSource=SCEAUserInfo,SCEAMosaicProfile,SCEAStoreSearch,SCEAAttributeList,SCEAOrderItems,SCEATrackItems,SCEARecentOrders,SCEARecentCalls,SCEARecentCases,SCEAVirtualInvt,SCEARecentReturns"></SCRIPT> 
     <SCRIPT src="gwt/sc/DataSourceLoader?dataSource=LWInstoreBackOrder,LWInstoreOrderHistory,LWInstorePSM,LWInstoreResets,LWInstoreStoreMaster,LWInstoreReorderProjDetails,LWInstorePlanogram,LWInstoreFeedback,LWInstoreVisibilityItemReorderHistory,LWInstoreRetails,Export,LWStoreAccess"></SCRIPT>
  
    <!-- OPTIONAL: include this if you want history support -->
    <iframe src="javascript:''" id="__gwt_historyFrame" tabIndex='-1' style="position:absolute;width:0;height:0;border:0"></iframe>	

  </body>

     <!--The following script is for the SLIDER group 2 navigation buttons.  -->
  	 <script type="text/javascript">
        function switchAutoAdvance() {
            imageSlider.switchAuto();
            switchPlayPauseClass();
        }
        function switchPlayPauseClass() {
            var auto = document.getElementById('auto');
            var isAutoPlay = imageSlider.getAuto();
            auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
            auto.title = isAutoPlay ? "Pause" : "Play";
        }
        switchPlayPauseClass();
    </script>
  
</html>
