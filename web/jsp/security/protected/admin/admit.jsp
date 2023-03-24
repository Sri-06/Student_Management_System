<%-- 
    Document   : admit
    Created on : 23-Feb-2023, 7:09:29 pm
    Author     : sri-pt7195
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import= "org.postgresql.Driver"%>
<%@page import ="java.sql.DriverManager" %>
<%@page import ="java.sql.Connection" %>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Statement"%>


<!DOCTYPE html>
<% if(request.isUserInRole("admin")){
%>
    



        
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admission  Page</title>
        <%@ include file="admin.jsp" %>
    </head>
    <body>
        
    <center>
        <table class="table table-dark">
            <tr class="table-success">
        <table border="1px">
            <tr>
                <th style="padding:20px;font-size:15px"> Name </th>
                <th style="padding:20px;font-size:15px"> Email </th>
                <th style="padding:20px;font-size:15px"> Phone </th>
                <th style="padding:20px;font-size:15px"> Message </th>
                
                <!-- comment -->
                
                <!-- comment --><!-- comment -->
            </tr>
    </center>
        
        
        <%
            try{
            Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Raju@2020");
Statement ps=con.createStatement();
String str="select * from admission";
ResultSet rs=ps.executeQuery(str);
while(rs.next()){
%>


            
<tr>
    <tr class="table-info">
    
    <td style="padding:20px;font-size:15px"><%=rs.getString("name")%></td>
    <td style="padding:20px;font-size:15px"><%=rs.getString("email")%></td>
    <td style="padding:20px;font-size:15px"><%=rs.getString("phone")%></td>
    <td style="padding:20px;font-size:15px"><%=rs.getString("text")%></td>
</tr><%}
}catch(Exception e)
            {
            out.println(e);
            }
            
            %>
</table>
    </center>
    </body>
</html>
<% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>
