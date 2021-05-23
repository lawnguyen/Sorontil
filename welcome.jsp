<%@ page language="java" import="java.util.*,javax.naming.*,javax.sql.DataSource,java.sql.*,java.rmi.Remote.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<%!
// <%@ page language="java" import="java.util.*,javax.naming.*,javax.sql.DataSource,java.sql.*,java.rmi.Remote.*,com.caliberta.enterprise.services.business.*,com.caliberta.enterprise.ejb.session.interfaces.*,com.caliberta.enterprise.utils.general.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

public ArrayList<String> theBusinessTypes() {
	ArrayList<String> ret = new ArrayList<String>();
/*	
	try {
		BusinessGeneralLocalHome home = BusinessGeneralUtil.getLocalHome();
		BusinessGeneralLocal businessTypes = home.create();
		ret = (ArrayList <String>) businessTypes.getBusinessTypes();
    } catch (Exception e) {
    	ret = new ArrayList<String>();
        System.out.println(e);
      } finally {
      }
      */
      return ret;
}

%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String theCity = "";
String theProvince = "";
String theCountry = "";
String theActionURI = "";
String theAction = "viewIndividualBusinesses.do";
int nBusinessTypes = 0; // debug only. See declaration below.
ArrayList<String> allBusinessTypes = new ArrayList<String>(); // debug only. See declaration below.

/* 
General a_generality = new GeneralEJBImpl();
ArrayList<String> allBusinessTypes = (ArrayList<String>)a_generality.getBusinessTypes();


int nBusinessTypes = allBusinessTypes.size();

String city = request.getParameter("country.city");
String theAction = "viewIndividualBusinesses.do";
session.setAttribute("country.city",(city == null ? "NULL" : (city.equalsIgnoreCase("") ? "BLANK" : city)));
String theActionURI = "";

StringTokenizer st = new StringTokenizer(city, ".", false);
String theCity = "";
String theProvince = "";
String theCountry = "";
int idx = 1;

while (st.hasMoreTokens()) {
  if (idx == 1) 
    theCountry = st.nextToken();
  else if (idx == 2)
    theProvince = st.nextToken();
  else
    theCity = st.nextToken();  
  idx++;
}
 */
     
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>List of Businesses</title>
    
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
    Welcome to the city of </b><font size='4' color='green'><b><%=theCity%></b></font>, <%=theCountry%><br>
    <br> 
    - Local time in <%=theCity%> is ... (To be implemented).<br>
    - Following is a list of businesses in <%=theCity%>: (To be implemented).<br>

    <br/>
    <TABLE border="1">
    <tr>
      <th>Business Types</th>
    </tr>
    <% for(int row=0; row < nBusinessTypes; row++) {%>
      <TR>
          <%theActionURI = theAction + "?" +  "bisType=" + allBusinessTypes.get(row);%>
          <TD> <html:link action="<%=theActionURI%>"><%=allBusinessTypes.get(row)%></html:link> </TD>              
      </TR>
<% } %>
    </TABLE>
  </body>
</html>
