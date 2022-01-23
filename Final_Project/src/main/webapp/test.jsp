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
                <h2>WELCOME TRACKING COMPANY</h2>
				<p>All the Information our transport company's services ,Trucks and can contact us to get your vehicle</p>

<p>How many vehicle is on road through my company</p>
                <div id="features">
                  <h2>FEATURED SERVICES</h2>
                  <ul>
                    <li><a href="....">.....</a></li>
					
                  </ul>
                  <ul>
				
                    <li><a href="....">....</a></li>
                  </ul>
                  <div class="clear"> </div>
                </div>
                
                <div id="newsletter">
                  <h2>Login Form</h2>
                  <% 
                  if(request.getAttribute("notlogin_msg")!=null){
                  out.print(request.getAttribute("notlogin_msg"));
                  }
                  
                  %>
                  
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>
                  
                  <form action="aloginprocess.jsp" method="get" accept-charset="utf-8">
                     Username:<input type="text" name="username"/>
                    Password:<input type="password" name="userpass"/>
                    <input type="submit" value="Login">
                  </form>
                  <p><a href="......">TAMIL SELVAN</a></p>
                </div>
                <div id="events">
                  <h2>FEATURED EVENTS</h2>
                  <ul>
                  <li><a href="....">.....</a></li>
                   
                  </ul>
                </div>
                <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>
</body>
</html>