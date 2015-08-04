<%-- 
    Document   : status
    Created on : Aug 2, 2015, 2:25:18 PM
    Author     : Ganesh
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oracle.Myconnection"%>
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
  <script type="text/javascript" src="js/jquery.validate.min.js"></script>
  <script type="text/javascript" >
      $(document).ready(function() {

	// Enter validation plugin, rules & messages inside here
	$('form').validate({
		rules: {
			comp: {
				required : true
			}		
		}
	
	});
		
}); // end ready

      
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
            <li><a href="welcome.jsp">Home</a></li>
            <li><a href="form.jsp">File Upload</a></li>
	    <li class="current"><a href="status.jsp">Check Status</a></li>
	    <li><a href="login.jsp">Login</a></li>
	    <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
           </div><!--close menubar-->
          </div><!--close header-->	  
	  
	  <div id="content">
              <h3 style="margin-left: 10px;color: skyblue;"> If you want to check the progress of your case,please enter the complaint Id and check which police inspector is working</h3>
               <br><br>
                       <form method="post" style="margin-left: 40px;">
                        <label> Complaint Id : </label>
                  <label for="comp" ></label>
                  <input type="text" name="comp" id="comp" /><br/><br/>
                  <input type="submit" value="Go" />    
              </form><br/><br/>
               <p> ${errormessage}</p>
                <% 
                    
                    if(request.getParameter("comp")!= null) {
                       PrintWriter out2=response.getWriter();
                       
                       int complaintId = Integer.valueOf(request.getParameter("comp"));
                       Myconnection  conn=new Myconnection();
                       Connection con=conn.getConnection();
                       
                       try{
                          if (con != null){
                              String q= "SELECT police_id FROM complaint WHERE complaint_id = ?";
                              PreparedStatement pstmt1=con.prepareStatement(q);
                              pstmt1.setInt(1,complaintId);
                              ResultSet result1= pstmt1.executeQuery();
                              if(result1.next()){
        
                                  if(result1.getInt("police_id") == 0){
                                    out.println("<p style=\"color:red;\"> Sorry, yet we haven't assigned any police inspector to your case.</p>");
                                  }else {
                              
                                    String qry = "SELECT c.complaint_id,p.firstName,p.lastName,p.phone from police as p"
                                       +" INNER JOIN complaint as c ON p.police_id = c.police_id "
                                       +"WHERE c.complaint_id = ?";              
                                PreparedStatement pstmt=con.prepareStatement(qry);
                                pstmt.setInt(1,complaintId);
                                ResultSet result= pstmt.executeQuery();
                                   
                           if(result.next()){
                              do{
                                %>
                                <div style="margin-left: 40px;">
                                <h3 style='color:skyblue;'> Police Inspector Details </h3>
                                <p> First Name : <%= result.getString("firstName")%> <br/>
                                    Last Name : <%= result.getString("lastName")%>  <br/>
                                    Phone : <%= result.getString("phone")%>    </p>
                                </div> <br /><br />   
                               <%
                             }while(result.next());
                            
                            }
                          }
                        } else {
                              out.println("<p style=\"color:red;\"><b>Please enter correct complaint id</b></p>");
                              }
                        } 
                        }catch(Exception e) {    
                          out2.println(e.getMessage());
                        }
                    }  
                %>      
          </div><!--close content-->	      
          </div><!--close site_content-->	
    <div id="footer">  
      <p>&COPY; Web Site by Ganesh Patel</p>
    </div><!--close footer-->
   
  </div><!--close main-->	
</body>
</html>
