<%@page language="java"  isErrorPage="true" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String strErrorCode = request.getParameter("errorcode");
	if ("101".equalsIgnoreCase(strErrorCode))
		out.println("<h3>Unauthorized access to application. Please contact your system administrator. </h3>");
	else if ("102".equalsIgnoreCase(strErrorCode))
		out.println("<h3>Invalid request. Please try to login again.</h3>");
	else
		out.println("<h3>Server issue.</h3>"+ strErrorCode);
%>

