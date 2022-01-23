<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
             
                
 
                  
                <form name="myform" >
<table>
	<tr><td>Route-From:<select name="from" id="select" onchange="sendInfo()">
					<option>Select a Branch</option>
					<option>mamallapuram</option>
					<option>pondy</option>
					<option>chennai</option>
					<option>ooty</option>
					</select></td><td>To:<select name="to" id="select" onchange="sendInfo()">
					<option>Select a Branch</option>
					<option>mamallapuram</option>
					<option>pondy</option>
					<option>chennai</option>
					<option>ooty</option>
					</select></td></tr>
	
	<tr><td><br></td></tr>
</table>
<div id="right"></div>
</form>
<br/>
 <div id="features">
                  <h2>FEATURED SERVICES</h2>
                  <ul>
                    <li><a href="....">........</a></li>
			
                  </ul>
                  <ul>
				  	<li><a href="...">....</a></li>
                   
                  </ul>
                  <div class="clear"> </div>
                </div>

                               <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>

</body>
</html>