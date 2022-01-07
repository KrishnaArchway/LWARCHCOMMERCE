<%
	//Uncomment below two lines for standalone development 
	//com.archway.core.util.AWCInitializerUtil.initializeServlet(this.getServletContext());
	//com.archway.fw.util.FWInitializerUtil.initializeServlet(this.getServletContext());
	
	String strParamName   = "";
	String strLicenseKey  =  "mqXX+4vxAHPi1HUZTlOUJCYiIcYqm6CDy2L5WXDqR9juZS1FixG4e6lrmcAa4VNlydJ8usMynT66YSlot9Ii6I8GwzXKj/mvXP067mmNhjL04xvteb62tDKylIEi/oeGRZ40ZOnG4wLvk3y8uwTtb8rx6PYOnJcxducAlqXdlvbiqc0wDUq7iWRovLnLTr9I03l8Rb+L/9pRK1frgbwIAmxM22hTbg7xMeE5gG84G8Xz/4iKagoxzlL+LVcrdeNorK3ogvILZi3IznDQYO3j4AhjBDyqYVRxYPW7em/PbE0N5Ty66/reDRjU6d8Dth2uUNEw9Nl/vezrY9jS9FdXxw==";
	//String strLicenseKey = (String)com.archway.core.bean.AWCConstantsBean.objProperties.get("license.key");
	String strLanguage    = "EN_US";
	String strSkinName    = "default";
	String strColorScheme = "silverwave";
	String strProcessCode = "SINGLE_SIGNON";
	String strTitle = "Self Service - ArchCommerce Engine";


	String strAppType     = "SELFSERVICE";
	String strClientId    = "74";
	String strUserLoginId = "OMARZAD0";


	//String strAppType     = "ESTORE";
	//String strClientId    = "251";
	//String strUserLoginId = "ETN_ADM";

	boolean lblValidLogin  = false;
	
    //Set Current Session
    javax.servlet.http.HttpSession lobjCurrentSession = request.getSession();
    
    //Set License Key into Session
    lobjCurrentSession.setAttribute("strLicenseKey", strLicenseKey.trim());
	
	//Set App Type into Session
    lobjCurrentSession.setAttribute("strAppType", strAppType.trim());

	//Set Client Id into Session
    lobjCurrentSession.setAttribute("strClientId", strClientId.trim());

	//Set Language into Session
    lobjCurrentSession.setAttribute("strLanguage", strLanguage.trim());
        
	//Set Skin Name into Session
    lobjCurrentSession.setAttribute("strSkinName", strSkinName.trim());

	//Set Color Scheme
    lobjCurrentSession.setAttribute("strColorScheme", strColorScheme.trim());

	//Set Color Scheme
    lobjCurrentSession.setAttribute("strUserLoginId", strUserLoginId.trim());
	
	//Set Process Code
    lobjCurrentSession.setAttribute("strProcessCode", strProcessCode.trim());
	
	//Set App Title
    lobjCurrentSession.setAttribute("strTitle", strTitle.trim());
	
%>
		<html>
		  <head>
		    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
		    <!--                                           -->
		    <!-- Any title is fine                         -->
		    <!--                                           -->
		    <title><%=strTitle%></title>
		    
			
		    <!-- IMPORTANT : You must set the variable isomorphicDir to [MODULE_NAME]/sc/ so that the SmartGWT resource are 
			  correctly resolved -->	
			<SCRIPT> var isomorphicDir = "gwt/sc/"</SCRIPT>
			<SCRIPT SRC="gwt/sc/modules/ISC_Core.js"></SCRIPT>
		 	<SCRIPT SRC="gwt/sc/modules/ISC_Foundation.js"></SCRIPT>
		 	<SCRIPT SRC="gwt/sc/modules/ISC_Containers.js"></SCRIPT>
		 	<SCRIPT SRC="gwt/sc/modules/ISC_Grids.js"></SCRIPT>
			<SCRIPT SRC="gwt/sc/modules/ISC_Forms.js"></SCRIPT>
			<SCRIPT SRC="gwt/sc/modules/ISC_DataBinding.js"></SCRIPT>
			<SCRIPT SRC="gwt/sc/skins/<%=strColorScheme%>/load_skin.js"></SCRIPT>
			
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
		
		    <!--load the datasources-->
		    <SCRIPT src="gwt/sc/DataSourceLoader?dataSource=FWMenu,FWLabel,AWCUserSecurityProperties,ESCatalog,ESOrderStatus,FSFiltersetDefinition"></SCRIPT>
		    <SCRIPT src="gwt/sc/DataSourceLoader?dataSource=ESOrderedItem,ESCheckoutItem,ESOrderPacking,ESAddressBook,ESTemplateOrder,ESINVItem,SCMUser,AWCScreenProperties,LWProject,LWItem,CHLogs,supplierDS,cloneDS,ESCheckOut,ESAddressLocations"></SCRIPT>
		    
		    <!-- OPTIONAL: include this if you want history support -->
		    <iframe src="javascript:''" id="__gwt_historyFrame" tabIndex='-1' style="position:absolute;width:0;height:0;border:0"></iframe>	
		
		  </body>
		</html>
