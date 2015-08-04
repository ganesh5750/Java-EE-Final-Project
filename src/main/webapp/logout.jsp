<%-- 
    Document   : logout
    Created on : Jul 29, 2015, 10:05:50 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("username") != null)
      session.setAttribute("username", null);
      session.invalidate();
  
      response.sendRedirect("login.jsp");
%>

