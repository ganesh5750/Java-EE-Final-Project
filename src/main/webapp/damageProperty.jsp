<%-- 
    Document   : damageProperty
    Created on : Jul 29, 2015, 11:34:14 PM
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
            <li><a href="welcome.jsp">Home</a></li>
            <li><a href="form.jsp">File Upload</a></li>
            <li><a href="status.jsp">Check Status</a></li>
            <li ><a href="login.jsp">Login</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
           </div><!--close menubar-->
          </div><!--close header-->	  
	  
	  <div id="content">
              <form action="/damageProperty" method="post" style="margin-left: 40px" >
                <fieldset class="fieldsetStyle">
                  <legend class="legendStyle">Damage to Property</legend> 
                <div class="damageStyle" style="margin-left: 20px">
                    <label for="radio1"> Did the incident happen within the city limit of Sarnia?</label>
                    <input type="radio" name="radio1" value="Yes">Yes
                    <input type="radio" name="radio1" value="No">No<br/><br/>
                    <label for="radio2"> Is the value of the property damage less than $5000?</label>
                    <input type="radio" name="radio2" value="Yes">Yes
                    <input type="radio" name="radio2" value="No">No<br/><br/>        
                    <label for="radio3"> Do you think you know who committed the crime?</label>
                    <input type="radio" name="radio3" value="Yes">Yes
                    <input type="radio" name="radio3" value="No">No<br><br/>
                    
                    <label for="radio4"> Is there a possibility that surveillance footage of the crime is available??</label>
                    <input type="radio" name="radio4" value="Yes">Yes
                    <input type="radio" name="radio4" value="No">No<br/><br/>     
                        
                           
                    <label for="suspect">Please specify the details of that person like Name,Car number,or any Id :</label>
                    <textarea rows="4" cols="50" name="suspect" placeholder="Enter Suspect details here"></textarea><br><br>
                     
                   
                     
                    <label for="crime"> Elaborate in details about how crime happened :</label>        
                    <textarea name="crime" rows="4" cols="50" placeholder="Enter details here"></textarea><br><br>
                        
                    &nbsp;&nbsp;        
                    <input type="submit" value="SUBMIT" style="width: 20%" /><br>
                     </div>
                 </fieldset> 
            </form>&nbsp;&nbsp;
            <div style="color:red;"> 
             <% if(session.getAttribute("complaint_number") != null) {
                 out.println(session.getAttribute("message1"));
                 out.println (session.getAttribute("complaint_number"));
             }
                 session.setAttribute("complaint_number",null);  
            %></div>
           
             &nbsp;&nbsp;
          </div>      
          </div><!--close site_content-->	
    <div id="footer">  
      <p>&COPY; Web Site by Ganesh Patel</p>
    </div><!--close footer-->
   
  </div><!--close main-->	
</body>
</html>
