<%@page import="java.util.Properties"%>
<%@page import="com.archway.lowes.bo.LWSeamlessBO"%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
    <head>
        <title>ArchCommerce</title>
    </head>
    <body>
	<%
	   Properties lobjProperties = LWSeamlessBO.isValidSSORequest(request);
	
	   if(lobjProperties != null && lobjProperties.size() > 0)
		   response.sendRedirect("lwseamlessLogin.jsp?ssoRedirection=Y&userid="+lobjProperties.getProperty("archway.login.id"));
	   else
		   response.sendRedirect("lwerror.jsp");
	%>
    </body>
</html>
