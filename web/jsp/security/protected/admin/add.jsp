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
RequestDispatcher dispatcher=null;
try{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?useSSL=false","postgres","Raju@2020");
String query="INSERT INTO student(rollno,name, email, gender, cgpa) values(?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,rollno);
ps.setString(2,name);
ps.setString(3,email);
ps.setString(4,gender);
ps.setString(5,cgpa);
int x=ps.executeUpdate();
dispatcher=request.getRequestDispatcher("add_student.jsp");
if(x>0){
    request.setAttribute("status", "success");
    }else{
    out.println("Registration failed!");
    }
    dispatcher.forward(request, response);
}catch(Exception e){
    out.println(e);
    }
    %><% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>
    

