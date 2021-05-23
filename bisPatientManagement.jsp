<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%

  final String htmlFacebook = (String)request.getAttribute("htmlFacebook");
  final String htmlGoogle = (String)request.getAttribute("htmlGoogle");
  
  
  final String __mmsMessageBody = (String)request.getAttribute("mmsMessageBody"); 
  //final String mmsMessageBody = null == __mmsMessageBody ? BisPatientManagementAction.getMmsMessageBody() : __mmsMessageBody;
  final String mmsMessageBody = (null == __mmsMessageBody ? "__mmsMessageBody" : __mmsMessageBody);
  
  final String __smsMessageBody = (String)request.getAttribute("smsMessageBody");
  //final String smsMessageBody = null == __smsMessageBody ? BisPatientManagementAction.getSmsMessageBody(/**/) : __smsMessageBody;
  final String smsMessageBody = null == __smsMessageBody ? "____smsMessageBody" : __smsMessageBody;
  
  
  final String __messageBodyFeedback = (String)request.getAttribute("messageBodyFeedback"); 
  final String theMessageBodyFeedback = null == __messageBodyFeedback ? "" : __messageBodyFeedback;
  //final String thePhoneList = request.getParameter("phoneList");
  final String __phoneListFeedback = (String)request.getAttribute("phoneListFeedback");
  final String thePhoneListFeedback = null == __phoneListFeedback ? "" : __phoneListFeedback;
  final String __feedback = (String)request.getAttribute("feedback");
  final String theFeedback = null == __feedback ? "" : __feedback;
  
  //String loginuserID = request.getParameter("userID");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>bisPatientManagement.jsp</title>

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
    <html:form action="/authenticated/bisPatientManagement" method="post" enctype="multipart/form-data" >
      
      <label for="story"><b>User ID </b></label><html:text property="userID" /><br/><br/><br/>
      
      <label for="story"><b><font color="blue">Message body [80 x 4] (no more than 160 characters, including new-line/s):</font></b></label><br/> 
      <html:textarea property="smsMessageBody" rows="4" cols="100" ></html:textarea><br/><br/>
      
      <!-- <label for="story"><b><font color="red"><%= theMessageBodyFeedback %></font></b></label><br/><br/> -->
      
      <label for="story"><b><font color="blue">List of client cell phones (no '+' or '-' or brackets or punctuation, separated by space, comma, or new-line):</font></b></label><br/>
      <html:textarea property="phoneList"  rows="4" cols="100" ></html:textarea><br/>
      
      <label for="story"><b><font color="red"><%= thePhoneListFeedback %></font></b></label><br/>
      <label for="story"><b><font color="green"><%= theFeedback %></font></b></label><br/>
      
      <!-- 
      <logic:empty name="bisPatientManagementForm" property="phoneList">
        <html:hidden property="do" value="viewSMS" />
      </logic:empty>      
      <logic:notEmpty name="bisPatientManagementForm" property="phoneList">
        <html:hidden property="do" value="sendSMS" />
      </logic:notEmpty>
      -->
      
      <html:submit>Send SMS message(s)</html:submit>
      <br/><br/><br/>
      
      <html:link action="/authenticated/bisPatientManagement.do?do=logout"><b>Logout</b></html:link>
                                                
      <br/><br/><br/> 
      
      <logic:empty name="bisPatientManagementForm" property="note"/>
      <logic:notEmpty name="bisPatientManagementForm" property="note">
        <label for="story"><b><font color="brown">Note Message </font></b><br/></label><html:textarea property="note" rows="3" cols="100" ></html:textarea>
      </logic:notEmpty>

    </html:form>
  </body>
</html:html>
