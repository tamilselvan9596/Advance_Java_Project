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
				<marquee dir="ltr"><font style="color: navy;">chennai-pondy,ooty-pondy,ooty-mamallapuram,pondy-chennai........</font></marquee>
				<p>You can find All the Information regarding our transport company's services ,Trucks and can contact us to get your vehicle installed in our company</p>

<p>You can find how many vehicle is on road through my company to your city or closest to it</p>
                <div id="features">
                  <h2>FEATURED SERVICES</h2>
                  <ul>
                    <li><a href="....">........</a></li>
					
                    
                  </ul>
                  <ul>
				  	<li><a href="....">.....</a></li>

                  </ul>
                  <div class="clear"> </div>
                </div>
                
                <div id="newsletter">
			        
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
                  
                <p><a href="...">....</a></p>
                </div>
                <div id="events">
                  <h2>FEATURED EVENTS</h2>
                  <ul>
                  <li><a href="....">...</a></li>
              
                  </ul>
                </div>
                <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>
</body>
</html>