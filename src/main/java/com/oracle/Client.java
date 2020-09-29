/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.oracle;

/**
 *
 * @author Ganesh
 */
public class Client {

	//adding new change for develop branch
	private test1;
    private String email;
    private String firstName;
    private String lastName;
    private String password;
    private String cpassword;
    private String phone;
    private String username;
   
   // Empty constructor 
   public Client(){
   
   } 
   
   public Client(String email,String firstName,String lastName,String password,String cpassword,String username,String phone){
   this.email=email;
   this.firstName = firstName;
   this.lastName = lastName;
   this.password = password;
   this.cpassword = cpassword;
   this.username = username;
   this.phone = phone;
   
   }
   
    
    public String getCpassword() {
        return cpassword;
    }

    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }
    
    
   

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

}
