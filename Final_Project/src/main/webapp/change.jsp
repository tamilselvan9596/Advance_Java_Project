<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String n=request.getParameter("val");

if(n.length()>0){
session.setAttribute("id",n);
out.print("Enter status<input type='text' name='status'/>");
out.print("<input type='submit' value='save'/>");
%>

<%
}//end of if
%>
</body>
</html>