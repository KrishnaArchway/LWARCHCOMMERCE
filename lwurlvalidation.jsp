<%@page errorPage="lwerror.jsp" %>
<%
	try {
		String ssoRedirection = request.getParameter("ssoRedirection");
		if(!"Y".equalsIgnoreCase(ssoRedirection)){// if ssoRedirection then bypass time validation
			lstrUserid = request.getParameter("userid");
		
		}else{
			lstrUserid = request.getParameter("userid");
		}
	} catch (Exception e) {
		com.archway.core.exception.AWCException.printException(e); 
		response.sendRedirect("lwerror.jsp?errorcode=102");
	}
%>