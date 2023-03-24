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
<% if(request.isUserInRole("admin")){
%>
    



        

<%
String rollno=request.getParameter("rollno");
String name=request.getParameter("name");
String email=request.getParameter("email");
String gender=request.getParameter("gender");
String cgpa=request.getParameter("cgpa");
try{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Raju@2020");
String query= ("UPDATE student set name=? ,  email=?,  gender=?, cgpa=? where rollno=?");
PreparedStatement ps=con.prepareStatement(query);

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,gender);
ps.setString(4,cgpa);
ps.setString(5,rollno);

int x=ps.executeUpdate();
if(x>0){
    out.println("Updated Successfully!");
    }else{
    out.println("Registration failed!");
    }


    	
    }catch(Exception e){
    out.println(e);
    }
    %>
    <% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>

