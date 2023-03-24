<%-- 
    Document   : add
    Created on : 23-Feb-2023, 11:49:47 pm
    Author     : sri-pt7195
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : admission
    Created on : 23-Feb-2023, 5:09:31 pm
    Author     : sri-pt7195
--%>


<%@ page import= "org.postgresql.Driver"%>
<%@page import ="java.sql.DriverManager" %>
<%@page import ="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement"%>

<%
String name=request.getParameter("txtName");
String email=request.getParameter("txtEmail");
String phone=request.getParameter("txtPhone");
String msg=request.getParameter("txtMsg");

try{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Raju@2020");
 String query="INSERT INTO contact(name, email, phone, msg) values(?,?,?,?)";
  PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,phone);
ps.setString(4,msg);

int x=ps.executeUpdate();
if(x>0){
    out.println("Contact  recorded");
    }else{
    out.println("Registration failed!");
    }


    	
    }catch(Exception e){
    out.println(e);
    }
    %>

