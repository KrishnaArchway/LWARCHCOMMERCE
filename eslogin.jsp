<%@ page language="java" import="java.util.Properties, java.io.FileInputStream" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
     String lstrRequestDateTime = com.archway.core.util.AWCDateUtil.getCurrentDate("MMddyyyyHHmmss");
	 
	 Properties lmapProperties = new Properties();
	 String lstrClientPrefix = request.getParameter("prefix");
	 lmapProperties.loadFromXML(new FileInputStream(com.archway.core.bean.AWCConstantsBean.strConfigDirPath+lstrClientPrefix.toLowerCase()+"estore.xml"));
	
	 String[] lstrarrEncryptedData = com.archway.core.util.AWCSecurityUtil.encryptData(lmapProperties.get("client.id")+"|ESTORE|"+lstrRequestDateTime);
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>
		<form id="mainForm" name="mainForm" action="index.jsp" method="post">
			<input type="hidden" id="strLicenseKey" name="strLicenseKey" value="<%=lmapProperties.get("license.key")%>" />
			<input type="hidden" id="strEncryptedKey" name="strEncryptedKey" value="<%=lstrarrEncryptedData[0]%>" />
			<input type="hidden" id="strEncryptedData" name="strEncryptedData" value="<%=lstrarrEncryptedData[1]%>" />
			<input type="hidden" id="strAction" name="strAction" value="LOGIN" />
			<input type="hidden" id="strLanguage" name="strLanguage" value="<%=lmapProperties.get("language")%>" />
			<!-- strColorScheme parameter define style guide to use -->
			<input type="hidden" id="strColorScheme" name="strColorScheme" value="<%=lmapProperties.get("colorscheme")%>" />
			<!-- strSkin parameter define Template to use for Login -->
			<input type="hidden" id="strSkin" name="strSkin" value="<%=lmapProperties.get("skin")%>" />
			<!-- strLoginHeaderImg parameter define Image for Login page-->
			<input type="hidden" id="strLoginHeaderImg" name="strLoginHeaderImg" value="<%=lmapProperties.get("login.header.img")%>" />
			<input type="hidden" id="strLoginPageImg" name="strLoginPageImg" value="<%=lmapProperties.get("login.page.img")%>" />
			<input type="hidden" id="strPrivacyPolicy" name="strPrivacyPolicy" value="<%=lmapProperties.get("privacypolicy")%>" />
			<input type="hidden" id="strConditionOfUse" name="strConditionOfUse" value="<%=lmapProperties.get("conditionofuse")%>" />
			<input type="hidden" id="strTitle" name="strTitle" value="<%=lmapProperties.get("title")%>" />
			<input type="hidden" id="strlogonprefix" name="strlogonprefix" value="<%=lmapProperties.get("logonprefix")%>" />
			<input type="hidden" id="stromsURL" name="stromsURL" value="<%=lmapProperties.get("omsURL")%>" />
		</form>
	</body>
</html>
<SCRIPT>//'"]]>>isc_loginRequired
//
// Embed this whole script block VERBATIM into your login page to enable
// SmartClient RPC relogin.

while (!window.isc && document.domain.indexOf(".") != -1) {
    try {
	
        if (parent.isc == null) {
            document.domain = document.domain.replace(/.*?\./, '');
            continue;
        } 
        break;
    } catch (e) {
        document.domain = document.domain.replace(/.*?\./, '');
    }
}

var isc = top.isc ? top.isc : window.opener ? window.opener.isc : null;
if (isc) isc.RPCManager.delayCall("handleLoginRequired", [window]);
</SCRIPT>

<script>
	document.mainForm.submit();
</script>