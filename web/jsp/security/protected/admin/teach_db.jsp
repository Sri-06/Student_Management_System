<%-- 
    Document   : teach_db
    Created on : 24-Feb-2023, 12:00:09 pm
    Author     : sri-pt7195
--%>

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
String tname=request.getParameter("name");
String description=request.getParameter("des");
RequestDispatcher dispatcher=null;

try{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?useSSL=false","postgres","Raju@2020");
 String query="INSERT INTO teachers(name,description) values(?,?)";
  PreparedStatement ps=con.prepareStatement(query);
  ps.setString(1,tname);
  ps.setString(2,description);
dispatcher=request.getRequestDispatcher("add_teach.jsp");
int x=ps.executeUpdate();

if(x>0){
     request.setAttribute("status", "success");
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
        

