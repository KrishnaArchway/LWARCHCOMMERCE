<%@page import="com.archway.core.bean.AWCConstantsBean"%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    response.sendRedirect("https://sso.connect.pingidentity.com/sso/sp/initsso?saasid="+AWCConstantsBean.objProperties.getProperty("pingone.lowes.saasid")+"&idpid=LWAC-idp");
%>
