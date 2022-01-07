<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
<%@ page import="java.io.File, java.io.FileInputStream, java.io.IOException, java.io.InputStream, java.util.Properties" buffer="0kb" session="true"%>
<html>
<head>
<title>JSP Test</title>
<%
try
{         
    InputStream objInputStream = getServletContext().getResourceAsStream("/META-INF/MANIFEST.MF");
    if (objInputStream == null)
    {
    	 out.println(" ");
         out.println("--------------------------------------------------------------------------------");
         out.println("Manifest Properties not found...");
         out.println("--------------------------------------------------------------------------------");
         out.println(" ");
    }
    String warName = new File(getServletContext().getRealPath("/")).getName();
    Properties objManifestProperties = new Properties();
    objManifestProperties.load(objInputStream);
    out.println(getServletContext().getRealPath("/"));
    out.println("<BR>");
    out.println(warName);
    out.println("<BR>");;
    
    out.println("--------------------------------------------------------------------------------");
    out.println("<BR>");
    out.println("Printing Manifest Properties...");
    out.println("<BR>");
    out.println("--------------------------------------------------------------------------------");
    out.println("<BR>");
    out.println(objManifestProperties.getProperty("Manifest-Version"));
    out.println("<BR>");
    out.println(objManifestProperties.getProperty("Ant-Version"));
    out.println("<BR>");
    out.println(objManifestProperties.getProperty("Created-By"));
    out.println("<BR>");
    out.println(objManifestProperties.getProperty("Built-By"));
    out.println("<BR>");
    out.println(objManifestProperties.getProperty("Implementation-Title"));
    out.println("<BR>");
    out.println(objManifestProperties.getProperty("Implementation-Version"));
    out.println("<BR>");
    out.println(objManifestProperties.getProperty("Implementation-Vendor"));
    out.println("<BR>");
   
}
catch (IOException e)
{            
    System.out.println("Couldn't read manifest.");
}        


%>
</head>
<body>
</body>
</html>
