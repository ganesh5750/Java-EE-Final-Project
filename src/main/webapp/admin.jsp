<%-- 
    Document   : admin
    Created on : Jul 31, 2015, 8:06:11 PM
    Author     : Ganesh
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
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
              <p style="margin-left: 40px;color: skyblue;"> Welcome Admin </p>
              
                <form  method="post">
                    <input type="submit" name="newCase" value="New_Case" style="margin-left: 400px;background-color: lightyellow"/>
                </form><br/>
                 <div style="complaintForm">       
                 <% 
                    String nCase = request.getParameter("newCase");
                    if("New_Case".equals(nCase))      {
             
                    Myconnection  conn=new Myconnection();
                    Connection con=conn.getConnection();
                     try{ if (con != null){
                        String qry = "SELECT  * FROM complaint WHERE police_id = 0";
                        PreparedStatement pstmt=con.prepareStatement(qry);
                        ResultSet result= pstmt.executeQuery();
                         result.next();
       
                         
                         if(result.isFirst()){
                         
                  %>
                  <form action="admin" method="post">
                     <table  border="1" cellpadding="3" cellspacing="0"  >
                         <tr>
                             <td style="text-align: center; background-color: #B8860B;"> Complaint Id </td>
                             <td style="text-align: center; background-color: #B8860B;"> Username     </td>
                             <td style="text-align: center; background-color: #B8860B;"> Date         </td>
                             <td style="text-align: center; background-color: #B8860B;"> Police Id    </td>
                         </tr>
                  
                         <tr>
                           <td style="text-align: center;height:25px;"> <%= result.getInt("complaint_id")  %> </td>
                           <td style="text-align: center;height:25px;"> <%= result.getString("username")   %> </td>
                           <td style="text-align: center;height:25px;"> <%= result.getString("date")   %> </td>
                           <td style="text-align: center;height:25px;"> <select name="police">
                                  <option value="101">101</option>
                                  <option value="102">102</option>
                                </select>
                           </td>  
                         </tr>
                     </table><br><br>
                             <input type="submit"  value="submit" style="margin-left: 20px;width: 20%" />  <br>
                     <% 
                         }
                         session.setAttribute("complaint_id", result.getInt("complaint_id"));
                       
                    }else {
                      out.println("Database Connection error");
                    }
                    }catch(Exception e){
                          
                             out.println("All the cases have been assigned.No more pending cases");   
                             
                    }
                 
                 %>
                                      
                  </form>  
                 <% } %> 
                </div>
               </div>  
          </div><!--close site_content-->&nbsp;	
    <div id="footer" >  
       <p>&COPY; Web Site by Ganesh Patel</p>
    </div><!--close footer-->
  </div> <!--close main-->	
</body>
</html>
