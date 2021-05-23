<%@ page language="java" import="com.cydonia.j2ee.web.utils.DASejb,com.cydonia.j2ee.web.utils.StringHandler" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<%
// System.out.println("-------> Login Page A - refID = " + request.getParameter("refID"));
request.getSession().setAttribute("refID", request.getParameter("refID"));
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Login Page for Example FormBasedAuth</title>
</head>
<body bgcolor="white">
	<h2>Custom Login Page</h2>
	<hr>

		<form method="post" action="j_security_check">
			<table border="0" cellspacing="5">
				<tr>
					<th align="right">Username:</th>
					<td align="left"><input type="text" name="j_username"></td>
				</tr>
				<tr>
					<th align="right">Password:</th>
					<td align="left"><input type="password" name="j_password"></td>
				</tr>
				<tr>
					<!--  <td align="right"><input type="submit" value="Login"></td> -->
					<td align="right"><input type="submit"></td>
					<td align="left"><input type="reset"></td>
				</tr>
			</table>
		</form>
</body>
</html>
