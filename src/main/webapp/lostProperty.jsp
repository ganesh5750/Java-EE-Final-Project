<%-- 
    Document   : lostProperty
    Created on : Jul 30, 2015, 1:07:25 AM
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
              <form action="lostProperty" method="post" style="margin-left: 40px">
              <fieldset class="fieldsetStyle">
                  <legend class="legendStyle">Lost Property</legend>  
                <div class="damageStyle">
                    
                    <label for="radio1"> Did the incident happen within the city limit of Sarnia?</label>
                    <input type="radio" name="radio1" value="Yes">Yes
                     <input type="radio" name="radio1" value="Yes" />No<br/><br/>
                    <label for="radio2"> Is this a loss of a passport, visa immigration document, citizen card, or government issued funds?</label>
                    <input type="radio" name="radio2" value="Yes">Yes
                    <input type="radio" name="radio2" value="Yes"/>No<br/><br/>        
                    <label for="radio3"> Is this a loss of prescription drugs or a prescription for drugs?</label>
                    <input type="radio" name="radio3" value="Yes">Yes
                    <input type="radio" name="radio3" value="Yes" />No<br/><br/>
                    
                    <label for="radio4">Is the value of the property lost less than $5000 (CDN)?</label>
                    <input type="radio" name="radio4" value="Yes">Yes
                    <input type="radio" name="radio4" value="Yes" />No<br/><br/>     
                        
                    
                    <label for="radio5">Have there been any unauthorized transactions on a credit card or debit card ?</label>
                    <input type="radio" name="radio5" value="Yes">Yes
                    <input type="radio" name="radio5" value="Yes" />No<br/><br/>         
                                 
                    <label for="radio6">Is there a possibility that surveillance footage of the crime is available? For example, parking garage surveillance camera, nearby retail store, etc.</label>
                    <input type="radio" name="radio6" value="Yes">Yes
                    <input type="radio" name="radio6" value="Yes" />No<br/><br/>                         
                           
                    <label for="suspect">Please specify suspect details like name,car number,car color and car model :</label>
                    <textarea rows="4" cols="50" name="suspect" placeholder="Enter Suspect details here"></textarea><br/><br/>
                     
                   
                     
                    <label for="crime"> Elaborate in details about how crime happened :</label>        
                    <textarea name="crime" rows="4" cols="50" placeholder="Enter details here"></textarea><br/><br/>
                        
                   
                    <input type="submit" value="SUBMIT" style="width: 20%"/><br/>
                   </div>
                </fieldset>
            </form><br/><br/>  
          </div><!--close content-->      
          </div><!--close site_content-->	
    <div id="footer">  
      <p>&COPY; Web Site by Ganesh Patel</p>
    </div><!--close footer-->
   
  </div><!--close main-->	
</body>
</html>

