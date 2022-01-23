<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%
		String username=getServletContext().getInitParameter("Username");
		String password=getServletContext().getInitParameter("Password");
		
if(request.getParameter("username").equalsIgnoreCase(username)&& request.getParameter("userpass").equalsIgnoreCase(password))
{
session.setAttribute("islogin","plz sign in first");
session.setAttribute("admin","admin");
%>
<jsp:forward page="admin.jsp"></jsp:forward>
<% 
}

else{
request.setAttribute("Error","Sorry! Username or Password Error. plz Enter Correct Detail");
session.setAttribute("Loginmsg","plz sign in first");
%>
<jsp:forward page="test.jsp"></jsp:forward>
<% 
}
%>



</body>
</html>