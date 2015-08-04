<%-- 
    Document   : login
    Created on : Jul 22, 2015, 10:28:39 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Onlince Crime Reporting</title>
  
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>

</head>

<body>
  <div id="main">	
	<div id="site_content">
          <div id="site_heading">
	    <h1>Online Crime Reporting</h1>	
	    <h2>Proud to Serve</h2>  
	  </div><!--close site_heading-->
	  <div id="header">
	    <div id="menubar">
             <ul id="menu">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="form.jsp">File Upload</a></li>
            <li><a href="status.jsp">Check Status</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li  class="current"><a href="SignUp.jsp">Sign Up</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
           </div><!--close menubar-->
          </div><!--close header-->	  
	  
	  <div id="content">
               <div style="margin-left: 40px">
            <form action="signup" method="post">
                <label for="fname">First Name:</label>
                <input type="text" name="fname" style="margin-left: 50px"><br/><br/>
                <label for="lname">Last name:</label>
                <input type="text" name="lname" style="margin-left: 55px"><br><br/>
                <label for="username">Username:</label>
                <input type="text" name="username" style="margin-left: 55px"><br><br/>
                <label for="password">Password:</label>
                <input type="password" name="password" style="margin-left: 60px"><br><br/>
                <label for="cpassword">Confirm Password:</label>
                <input type="password" name="cpassword" ><br><br/>
                <label for="email">Email Id:</label>     
                <input type="email" name="email" style="margin-left: 70px"><br><br/>
                <label for="phone">Phone :</label>
                 <input type="tel" name="phone" style="margin-left: 80px"><br><br/>    
                     
                <input type="submit" value="Submit" id="submit">        
            </form><br/><br/><br/>   
              </div><!-- closing form_style tag-->      
          </div><!-- closing content div-->      
          </div><!--close site_content-->	
    <div id="footer">  
        <p>&COPY; Web Site by Ganesh Patel</p>
    </div><!--close footer-->
   
  </div><!--close main-->	
</body>
</html>


