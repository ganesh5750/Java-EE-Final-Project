<%-- 
    Document   : FileUpload
    Created on : Aug 2, 2015, 6:50:01 PM
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
            <li class="current"><a href="form.jsp">File Upload</a></li>
            <li><a href="status.jsp">Check Status</a></li>
            <li ><a href="login.jsp">Login</a></li>
            <li ><a href="SignUp.jsp">Sign Up</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
           </div><!--close menubar-->
          </div><!--close header-->	  
	  
	  <div id="content">
              
              <h3 style="margin-left: 40px">Please name your file in format "username.complaintId.jpg." </h3>
              <form action="upload" enctype="multipart/form-data" method="POST" style="margin-left: 40px;">
             <input type="file" name="file1"/><br/><br/>
             <input type="Submit" value="Upload File"/><br/>
             </form><br/><br/>
             <%  if(session.getAttribute("Message1")!= null) { %>
             <p style="color:red;font-weight: bold"><%= session.getAttribute("Message1")%> </p>
             <% } %>
          </div>      
          </div><!--close site_content-->
          
    <div id="footer">  
      <p>&COPY; Web Site by Ganesh Patel</p>
    </div><!--close footer-->
   
  </div><!--close main-->	
</body>
</html>