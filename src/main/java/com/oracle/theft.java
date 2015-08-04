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
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class theft extends HttpServlet {

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
            out.println("<title>Servlet theft</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet theft at " + request.getContextPath() + "</h1>");
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
    Map<String,String> map=new LinkedHashMap<String,String>();
       
        
         map.put("ques1", request.getParameter("radio1"));
         map.put("ques2", request.getParameter("radio2"));
         map.put("ques3", request.getParameter("radio3"));
         map.put("ques4", request.getParameter("radio4"));
         map.put("ques5", request.getParameter("radio5"));
         map.put("ques6", request.getParameter("radio6"));
         map.put("ques7", request.getParameter("suspect"));
         map.put("ques8", request.getParameter("crime"));
         Myconnection  conn=new Myconnection();

         Connection con=conn.getConnection();
        
         PrintWriter out=response.getWriter();
         HttpSession session = request.getSession();
         
         Set set=map.keySet();
         Iterator iter=set.iterator();

             try {
               if(con != null){          
                String query="INSERT INTO theft (username, ques_id1, answer1, ques_id2, answer2, ques_id3, answer3, ques_id4, answer4, ques_id5, answer5, ques_id6, answer6,  ques_id7, answer7,  ques_id8, answer8) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stmt=con.prepareStatement(query);
                stmt.setString(1,session.getAttribute("username").toString());
                stmt.setString(2,iter.next().toString());
                stmt.setString(3,map.get("ques1"));
                stmt.setString(4,iter.next().toString());
                stmt.setString(5,map.get("ques2"));
                stmt.setString(6,iter.next().toString());
                stmt.setString(7,map.get("ques3"));
                stmt.setString(8,iter.next().toString());
                stmt.setString(9,map.get("ques4"));
                stmt.setString(10,iter.next().toString());
                stmt.setString(11,map.get("ques5"));
                stmt.setString(12,iter.next().toString());
                stmt.setString(13,map.get("ques6"));
                stmt.setString(14,iter.next().toString());
                stmt.setString(15,map.get("ques7"));
                stmt.setString(16,iter.next().toString());
                stmt.setString(17,map.get("ques8"));
                stmt.executeUpdate();
                
                java.util.Date date = new java.util.Date();
                Format formatter = new SimpleDateFormat("dd/MM/yyyy");
                String today_date = formatter.format(date);
                
                String query1="INSERT INTO complaint (username, date) VALUES( ?, ? )";
                PreparedStatement pstmt=con.prepareStatement(query1);
                pstmt.setString(1,session.getAttribute("username").toString());
                pstmt.setString(2,today_date);
                pstmt.executeUpdate();
                
                
                String query2="SELECT complaint_id FROM complaint WHERE username = ? And date = ?";
                PreparedStatement pstatement=con.prepareStatement(query2);
                pstatement.setString(1,session.getAttribute("username").toString());
                pstatement.setString(2,today_date);
                
                ResultSet rs= pstatement.executeQuery();
                rs.next();
           
                session.setAttribute("complaint_number", rs.getInt("complaint_id"));
              
                request.setAttribute("message1", "You have registered an complaint we will get back to you soon.Your complaint id : ");
                RequestDispatcher rd=request.getRequestDispatcher("damageProperty.jsp"); 
               rd.include(request,response); 
                } else {
                out.println("Error in database connection");
                }
             } catch (SQLException e) { 
                
                 out.println(e.getMessage());
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
