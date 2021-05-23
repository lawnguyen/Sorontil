<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<html>
<head>
<title>SMS Report</title>
</head>
<body>
    <html:form action="/authenticated/bisReport.do" method="post" enctype="multipart/form-data" >
    
    <br/><br/>
    <table border="1">
      <tbody>
        <tr>
          <td><b>ReportType:</b></td>
          <td><html:text property="reportType" /> <html:errors property="reportType" /></td>
         </tr>  
         <tr>
          <td><b>Report Order:</b></td>
          <td>
            <html:select property='reportOrder'>
              <html:option value="byTime"/>
              <html:option value="byName"/>
            </html:select>
          </td>
         </tr>
         <tr>
          <td><b>Interval:</b></td>
          <td>
            <html:select property='interval'>
              <html:option value="1"/>
              <html:option value="2"/>
              <html:option value="3"/>
              <html:option value="4"/>
              <html:option value="5"/>
              <html:option value="6"/>
              <html:option value="7"/>
              <html:option value="8"/>
              <html:option value="9"/>
              <html:option value="10"/>
              <html:option value="11"/>
              <html:option value="12"/>
              <html:option value="13"/>
              <html:option value="14"/>
              <html:option value="15"/>
              <html:option value="16"/>
              <html:option value="17"/>
              <html:option value="18"/>
              <html:option value="19"/>
              <html:option value="20"/>
              <html:option value="20"/>
              <html:option value="21"/>
              <html:option value="22"/>
              <html:option value="23"/>
              <html:option value="24"/>
              <html:option value="25"/>
              <html:option value="26"/>
              <html:option value="27"/>
              <html:option value="28"/>
              <html:option value="29"/>
              <html:option value="30"/>
              <html:option value="30"/>
              
              
            </html:select>
          </td>
         </tr> 
         <tr>
          <td><b>Frequency (day, week, month, year):</b></td>
          <td>
            <html:select property='intervalFrequency'>
              <html:option value="day"/>
              <html:option value="week"/>
              <html:option value="month"/>
              <html:option value="year"/>
            </html:select>	
          </td>
         </tr>
        </tbody>        
    </table>

    <html:submit>Refresh Report</html:submit><br/>
		<br/><br/>
		
		<table border="1">
			<tbody>
				<%-- set the header --%>
				<tr>
					<td>reportTime</td>
					<td>userID</td>
					<td>reportInfo</td>
					<td>reportID</td>
					<td>reportNote</td>
				</tr>
				
				<%-- check if reports exist and display message or iterate over reports  --%>
				<logic:empty name="bisReportForm" property="reports">
					<tr>
						<td colspan="5">No SMS reports available</td>
					</tr>
				</logic:empty>
				
				<logic:notEmpty name="bisReportForm" property="reports">
					<logic:iterate name="bisReportForm" property="reports" id="report">
						<tr>
							<td><bean:write name="report" property="reportTime" />
							<td><bean:write name="report" property="userID" />
							<td><bean:write name="report" property="reportInfo" />
							<td><bean:write name="report" property="reportID" />
							<td><bean:write name="report" property="reportNote" />
						</tr>
					</logic:iterate>
				</logic:notEmpty>

			</tbody>
		</table>
	</html:form>
</body>
</html>

