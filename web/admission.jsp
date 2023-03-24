<%-- 
    Document   : admission
    Created on : 23-Feb-2023, 5:09:31 pm
    Author     : sri-pt7195
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import= "org.postgresql.Driver"%>
<%@page import ="java.sql.DriverManager" %>
<%@page import ="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement"%>

    



        

<%
    

String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String text=request.getParameter("text");

try{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Raju@2020");
 String query="INSERT INTO admission(name, email, phone, text) values(?,?,?,?)";
  PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,phone);
ps.setString(4,text);
int x=ps.executeUpdate();
if(x>0){
    out.println("Admission recorded");
    }else{
    out.println("Registration failed!");
    }


    	
    }catch(Exception e){
    out.println(e);
    }
    %>
