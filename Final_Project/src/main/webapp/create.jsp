<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
                <div id="newsletter">
                
                  <%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="test.jsp"></jsp:forward>
<%
}
%>
                  
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>
                  
                <form name="myform" action="asave.jsp">
<table>
<tr><td>Branch:</td><td><select name="branch">
					<option>Select a Branch</option>
					<option>mamallapuram</option>
					<option>pondy</option>
					<option>chennai</option>
					<option>ooty</option>
					</select></td></tr>
					<tr><td><br></td></tr>
<tr><td>Username:  </td><td><input type="text" name="username"/></td></tr>
	<tr><td><br></td></tr>
	
<tr><td>Password:  </td><td><input type="password" name="userpass"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Date of Joining:</td><td><input type="text" name="doj"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Date of Birth:</td><td><input type="text" name="dob"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Salary:</td><td><input type="text" name="salary"/></td></tr>
	<tr><td><br></td></tr>
		<tr><td></td><td><input type="submit" value="create" style="padding: 2"></td></tr>
	<tr><td><br></td></tr>
</table>
<div id="location" align="left"></div>
</form>
               </div>
                               <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>
</body>
</html>