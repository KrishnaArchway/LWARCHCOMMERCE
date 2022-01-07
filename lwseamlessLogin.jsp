
<%@ page language="java" import="java.util.Properties, java.io.FileInputStream" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String lstrUserid = ""; %>	
<%@ include  file="lwurlvalidation.jsp"  %>
<% 
	//String strLicenseKey  = "mqXX+4vxAHPi1HUZTlOUJCYiIcYqm6CDy2L5WXDqR9juZS1FixG4e6lrmcAa4VNlydJ8usMynT66YSlot9Ii6I8GwzXKj/mvXP067mmNhjL04xvteb62tDKylIEi/oeGRZ40ZOnG4wLvk3y8uwTtb8rx6PYOnJcxducAlqXdlvbiqc0wDUq7iWRovLnLTr9I03l8Rb+L/9pRK1frgbwIAmxM22hTbg7xMeE5gG84G8Xz/4iKagoxzlL+LVcrdeNorK3ogvILZi3IznDQYO3j4AhjBDyqYVRxYPW7em/PbE0N5Ty66/reDRjU6d8Dth2uUNEw9Nl/vezrY9jS9FdXxw==";
	String strLicenseKey  = (String)com.archway.core.bean.AWCConstantsBean.objProperties.get("lowes.license.key");
    String lstrRequestDateTime = com.archway.core.util.AWCDateUtil.getCurrentDate("MMddyyyyHHmmss");
    String[] lstrarrEncryptedData = com.archway.core.util.AWCSecurityUtil.encryptData("74|SELFSERVICE|"+lstrRequestDateTime+"|" + lstrUserid );
   
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>
		<form id="mainForm" name="mainForm" action="index.jsp" method="post">
			<input type="hidden" id="strLicenseKey" name="strLicenseKey" value="<%=strLicenseKey%>" />
			<input type="hidden" id="strEncryptedKey" name="strEncryptedKey" value="<%=lstrarrEncryptedData[0]%>" />
			<input type="hidden" id="strEncryptedData" name="strEncryptedData" value="<%=lstrarrEncryptedData[1]%>" />
			<input type="hidden" id="strAction" name="strAction" value="SEAMLESS" />
			<input type="hidden" id="strLanguage" name="strLanguage" value="en_US" />
			<input type="hidden" id="strColorScheme" name="strColorScheme" value="lw_skin" />
			<input type="hidden" id="strSkin" name="strSkin" value="default" />
			<input type="hidden" id="strLoginHeaderImg" name="strLoginHeaderImg" value="lw_ssc_logo.png" />
			<input type="hidden" id="strPrivacyPolicy" name="strPrivacyPolicy" value="lwprivacypolicy.html" />
			<input type="hidden" id="strConditionOfUse" name="strConditionOfUse" value="lwconditionofuse.html" />
			<input type="hidden" id="strTitle" name="strTitle" value="Welcome to Lowes" />
		</form>
	</body>
</html>
<script>
	document.mainForm.submit();
</script>
