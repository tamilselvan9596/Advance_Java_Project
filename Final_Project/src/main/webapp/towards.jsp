<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>       

 <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
 
            <div id="gbox-bg">
             <div id="gbox-grd">
             <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
				<marquee dir="ltr"><font style="color: navy;">chennai-pondy,ooty-pondy,ooty-mamallapuram,pondy-chennai........</font></marquee>             
             <br/>
              <% 
              	String branch =(String)session.getAttribute("branch");
                Class.forName("oracle.jdbc.driver.OracleDriver");
	            Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
                PreparedStatement ps= con.prepareStatement("Select tmodel,tno,malik,tfrom from tinstall where rownum <7 and tto='"+branch+"' order by id desc ");
               	ResultSet rs= ps.executeQuery();
               	out.print("<table cellspacing='3',cellpadding='3' border='3'>");
               	out.print("<tr><th><center>Model<center></th><th><center>Number</center></th><th>Owner</th><th><center>From</center></th></tr>");
               	while(rs.next()){
               	out.print("<tr>");
               			out.print("<td>"+rs.getString(1)+"</td>");
               			out.print("<td>"+rs.getString(2)+"</td>");
               			out.print("<td>"+rs.getString(3)+"</td>");
               			
               	   		out.print("<td>"+rs.getString(4)+"</td>");	
               	    	out.print("</tr>");
               	}
               out.print("</table>");
                %>
               
             
            
                
				
				
                <br/>
               
                <div id="features">
                  <h2>FEATURED SERVICES</h2>
                  <ul>
                    <li><a href="...">....</a></li>
				    
                  </ul>
                  <ul>
				  	<li><a href="....">....</a></li>
                    
                  </ul>
                  <div class="clear"> </div>
                </div>
                 </div>
                <div id="newsletter">
			     
                  
                <p><a href="....">......</a></p>
                </div>
                <div class="clear"> </div>
                
             
            </div>
            <jsp:include page="footer.html"></jsp:include>

</body>
</html>