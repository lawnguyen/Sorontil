<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@page contentType="text/html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>siteLayout.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table border="0" width="100%" height="100%" cellspacing="5">
  	<tbody>
  		<tr><td colspan="3"><tiles:insert attribute="header" /></td></tr>
  		<tr>
  			<td><tiles:insert attribute="body" /></td>
  		</tr>
  		<tr><td colspan="1"><tiles:insert attribute="footer" /></td></tr>
  	</tbody>
  </table>
  </body>
</html:html>
