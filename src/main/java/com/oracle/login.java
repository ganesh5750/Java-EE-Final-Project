/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.oracle;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ganesh
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String uname = request.getParameter("username");
         String password = request.getParameter("password");
         int count=0;
         Myconnection  conn=new Myconnection();
         Connection con=conn.getConnection();
         response.setContentType("text/html");
         PrintWriter out=response.getWriter();
         if((password.equals("admin") && uname.equals("admin"))) {
            response.sendRedirect("admin.jsp");
         }              
         try {
               if(con != null){
                
                String query="SELECT count(*) count FROM client WHERE username = ? and password = ?";
                PreparedStatement stmt=con.prepareStatement(query);
                stmt.setString(1, uname);
                stmt.setString(2, password);
                
                ResultSet rs= stmt.executeQuery(); 
                rs.next();
                count = rs.getInt("count");
                out.println(count);
                    if(count == 1) {
                        HttpSession session = request.getSession();
                       session.setAttribute("username", uname);
                        response.sendRedirect("welcome.jsp");
                    }else {
                       
                       request.setAttribute("errorMessage", "Sorry Username and Password are incorrect");
                       RequestDispatcher rd=request.getRequestDispatcher("login.jsp");    
                        rd.include(request,response);   
                        
                    }
                }else {
                    out.println("Error in database connection");
                }
             } catch (SQLException e) { 
                    out.println(e.getMessage());
                    out.println(e.getErrorCode());
                    out.println(e.getSQLState());
                   
               }
         
         
         
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
