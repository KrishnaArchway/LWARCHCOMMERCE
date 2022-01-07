<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String strSSOStoreNumber  = null;
String strPreferredName = null;
String strJobCodeFlg = null;
String strEmailAddr = null;
String strWorkforceId = null;
String strSSCCP = null;
if(null != request.getSession()){
	strSSOStoreNumber = (String)request.getSession().getAttribute("strSSOStoreNumber");
	strPreferredName = (String)request.getSession().getAttribute("preferredName");
	strJobCodeFlg = (String)request.getSession().getAttribute("jobCodeFlg");
	strEmailAddr = (String)request.getSession().getAttribute("emailAddr");
	strWorkforceId = (String)request.getSession().getAttribute("workforceID");
	strSSCCP = (String)request.getSession().getAttribute("ssccp");
}
request.getSession().invalidate();
session = request.getSession(true);
if(strSSOStoreNumber !=null && !strSSOStoreNumber.isEmpty()) 
	session.setAttribute("strSSOStoreNumber", strSSOStoreNumber); 
if(strPreferredName !=null && !strPreferredName.isEmpty()) 
	session.setAttribute("preferredName", strPreferredName); 
if(strJobCodeFlg !=null && !strJobCodeFlg.isEmpty())
	session.setAttribute("jobCodeFlg", strJobCodeFlg);
if(strEmailAddr !=null && !strEmailAddr.isEmpty())
	session.setAttribute("emailAddr", strEmailAddr);
if(strWorkforceId !=null && !strWorkforceId.isEmpty())
	session.setAttribute("workforceID", strWorkforceId);
if(strSSCCP !=null && !strSSCCP.isEmpty())
	session.setAttribute("ssccp", strSSCCP);

if(com.archway.core.bo.AWCSeamlessBO.validate(request))
{
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>
		<form id="mainForm" name="mainForm" action="fwmain.jsp" method="post">
		</form>
	</body>
</html>
<script>
	document.mainForm.submit();
</script>
<% 
}
else
{
    out.println("Unauthorized access to application. Please contact your system administrator.");       
} 
%>