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
String courseid=request.getParameter("courseid");
String cname=request.getParameter("cname");
String duration=request.getParameter("duration");
RequestDispatcher dispatcher=null;
try{
Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?useSSL=false","postgres","Raju@2020");
String query="INSERT INTO courses(courseid,cname,duration) values(?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,courseid);
ps.setString(2,cname);
ps.setString(3,duration);

int x=ps.executeUpdate();
dispatcher=request.getRequestDispatcher("add_course.jsp");
if(x>0){
request.setAttribute("status", "success");
}else{
    out.println("Registration failed!");
    }
    dispatcher.forward(request, response);
}catch(Exception e){
    out.println(e);
    }
    %>
    <% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>


