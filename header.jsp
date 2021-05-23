<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%
String cRefID = (String) request.getSession().getAttribute("c.refID");
String oRefID = (String) request.getSession().getAttribute("o.refID");

if (cRefID == null) cRefID = "";
if (oRefID == null) oRefID = "";

//String marquis = "Le Family Dental";
String marquis = "" + cRefID + " " + oRefID;


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
<html:base />

<title>header.jsp</title>

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
	<table width="100%" border="0" height="100%">
		<tbody>
			<tr>
				<td width="20%" valign="top"></td>
				<td width="60%" align="center" valign="top"><h3>
						&nbsp;<font size="12" face="Script MT Bold"
							color="(green,red)"><strong><%=marquis%></strong></font>
					</h3></td>
				<td width="20%" align="right" valign="top">
				  <html:link action="/secured/bisRegistration.do?do=beginRegistration"><b>New Business Registration</b></html:link><br>
				  <html:link action="/authenticated/bisPatientManagement.do"><b>SMS</b></html:link><br>
				  <html:link action="/authenticated/bisReport.do"><b>Report</b></html:link><br>
				  <html:link action="/authenticated/bisPatientManagement.do?do=logout"><b>logout</b></html:link>                    
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html:html>