/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.oracle;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 *     @author Ganesh
 */
public class Myconnection {
    public Connection getConnection() throws ClassNotFoundException {
       Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.err.println("Drivers not found!, " + ex.getMessage());
        }
        try {
           String jdbc = "jdbc:mysql://127.10.23.130:3306/crimereport";
           String username = "adminRtYgrUC";
           String password = "nZeBGXHzyPfz";
            
            conn = DriverManager.getConnection(jdbc, username, password);
        } catch (SQLException ex) {
            System.err.println("Failed to Connect!, " + ex.getMessage());
        }
        return conn;
     }
    
     

    
    public int checkingDuplicateUserName(String username) throws ClassNotFoundException{
        int rowCount=0;
        try {
            Connection con=getConnection();
            String query="SELECT COUNT(*) count FROM client WHERE username=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                rowCount=rs.getInt("count");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return rowCount;
    }
    
    public int checkingDuplicateEmailId(String email) throws ClassNotFoundException{
        int rowCount=0;
        try {
            Connection con=getConnection();
            String query="SELECT COUNT(*) count FROM client WHERE emailid=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, email);
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                rowCount=rs.getInt("count");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return rowCount;
    }
}    