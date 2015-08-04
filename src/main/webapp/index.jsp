<%-- 
    Document   : index
    Created on : Jul 21, 2015, 11:39:55 PM
    Author     : Ganesh Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Onlince Crime Reporting</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
  <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>

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
                        <li class="current"><a href="index.html">Home</a></li>
                        <li><a href="form.jsp">File Upload</a></li>
                        <li><a href="status.jsp">Check Status</a></li>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="SignUp.jsp">Sign Up</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>
                    </ul>
                </div><!--close menubar-->
            </div><!--close header-->	  
            <div id="banner_image">
                <div id="slider-wrapper">        
                    <div id="slider" class="nivoSlider">
                        <img src="images/crimescene1.jpg" alt="" />
                        <img src="images/crimescene2.jpg" alt="" />
                    </div><!--close slider-->
		</div><!--close slider_wrapper-->
            </div><!--close banner_image-->			  
            <div id="content">
                <div class="content_item">
                    <h1>Online Crime Reporting</h1>
                    <p>Welcome to the Sarnia Police Service Citizen Online Police Reporting Service. 
                    The Sarnia Police Service encourages citizens and visitors to our city to report all crimes that occur in Sarnia.
                    </p>
                  <div id="emergency">
                        <h4><span id="sidetitle"> If this is an Emergency please call 911.</span> </h4> 
                  </div>    
                    <p>
                        To start your online report, select the appropriate incident type from below. Please ensure the information you enter is accurate or your report will be returned for clarification.
                    </p>    
                </div><!--close content_item-->
                <div class="content_image">
                       <a href="#"><img  alt="image" src="images/image1.jpg" /></a>
		</div><!--close content_image-->
		<div class="content_text">
                       <a href="login.jsp"><h3>Damage Property</h3></a>
                        <p><b>Definition : </b>Someone has vandalized or defaced your property.<br>
                        <b>Example : </b>Graffiti, Rock thrown through a house window, smashed exterior light<br> on house</p>
		</div><!--close content_text-->  
                      <br style="clear:both"/>
                <div class="content_image">
                      <a href="#"><img  alt="image" src="images/image2.jpg" /></a>
		</div><!--close content_image-->
		<div class="content_text">
                      <a href="login.jsp"><h3>Damage to Vehicle</h3></a>
                      <p><b>Definition : </b>Someone has vandalized or defaced your vehicle.<br>
                      <b>Example : </b>Slashed tires; keyed exterior of vehicle </p>
		</div><!--close content_text-->  		
                        <br style="clear:both"/>
                <div class="content_image">
                       <a href="#"><img  alt="image" src="images/image5.jpg" /></a>
		</div><!--close content_image-->
		<div class="content_text">
                       <a href="login.jsp"><h3>Lost Property</h3></a>
                       <p><b>Definition : </bYour possessions are lost or missing.<br>
                       <b>Example : </b>Leaving personal items in a restaurant; lost wallet or purse </p>
		</div><!--close content_text-->
                        <br style="clear:both"/>
                <div class="content_image">
                       <a href="#"><img  alt="image" src="images/image3.jpg" /></a>
		</div><!--close content_image-->
		<div class="content_text">
                       <a href="login.jsp"><h3>Theft from Vehicle,under $5000</h3></a>
                       <p><b>Definition : </b>Property was taken from your vehicle without your permission (excluding license plates).<br>
                        <b>Example : </b>Slashed tires; keyed exterior of vehicle </p>
		</div><!--close content_text-->   
	    
                        <br style="clear:both"/>   
                <div class="content_image">
                         <a href="#"><img  alt="image" src="images/image4.jpg" /></a>
		</div><!--close content_image-->
		<div class="content_text">
                         <a href="login.jsp"><h3>Theft under $5000</h3></a>
                        <p><b>Definition : </b>Something you or your business owns is taken without your consent. Lost property is not a theft. .<br>
                        <b>Example : </b>Bike stolen out of your yard; cell phone stolen from a locker </p>
		</div><!--close content_text-->   
	 </div><!--close content-->	  

       <div class="sidebar_container">  		  
		<div class="sidebar">
                      <div class="sidebar_item">
                            <div class="side_heading">  
                                <h2><span id="sidetitle">Crime Stopper</span></h2>
                                &nbsp;&nbsp;
                            </div> 
                            <div id="sideimg">
                                 <img src="images/sideimage1.jpg" />
                            </div>
                                 <p>The Sarnia Police Service is looking for assistance in solving crimes and identifying the individuals depicted in surveillance still photos. If you have a tip and want to remain anonymous, call Crime Stoppers at 1-800-222-0000.</p>      
                      </div><!--close sidebar_item--> 
                </div><!--close sidebar-->     		
                <div class="sidebar">
                     <div class="sidebar_item">
                          <div class="side_heading">
                                <h2><span id="sidetitle">Online Crime</span><span id="sidetitle"> Reporting Help</span></h2>
                          </div> 
                     </div>
	    	
                        <p>If you have difficulties while entering your report, please call the online reporting help line at 780-391-0001.</p>
                        <h4><span id="side_msg">Filing a false police report is a criminal offence.</h4>
                        <p>To report other crime types, call the non-emergency line at 780-423-0007 or #377 from a mobile or report in person at the nearest Police Station.</p>
		      
                </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  
    </div><!--close sidebar_container-->  
	  
    
        <div id="footer">  
                <p>&COPY; Web Site by Ganesh Patel</p>
        </div><!--close footer-->	
  </div><!--close main-->	
</body>
</html>

