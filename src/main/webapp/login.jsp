<%-- 
    Document   : login
    Created on : Jul 22, 2015, 10:28:39 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Online Crime Reporting</title>
  
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
            <li><a href="index.html">Home</a></li>
            <li><a href="form.jsp">File Upload</a></li>
            <li><a href="status.jsp">Check Status</a></li>
            <li class="current"><a href="login.jsp">Login</a></li>
            <li><a href="SignUp.jsp">Sign Up</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
           </div><!--close menubar-->
          </div><!--close header-->	  
	  
	  <div id="content">
            <div style="margin-left: 80px;margin-top: 50px">
            <form action="login" method="post">
               
                <label for="username">Username:</label>
                <input type="text" name="username"><br><br>
                <label for="password">Password:</label>
                <input type="password" name="password"><br/><br/>
              
                <input type="submit" value="Submit" id="submit">        
            </form><br/><br/>   
                <div style="color:red;"> ${errorMessage}</div>
               
            </div><!-- closing form_style tag-->      
          </div>      
          </div><!--close site_content-->	
          <div id="footer" style="margin-top: 150px;">  
      <p>&COPY; Web Site by Ganesh Patel</p>
    </div><!--close footer-->
   
  </div><!--close main-->	
</body>
</html>


