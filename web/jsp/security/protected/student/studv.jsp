<%-- 
    Document   : studv
    Created on : 23-Feb-2023, 4:12:46 pm
    Author     : sri-pt7195
--%>

<%@page import ="java.sql.DriverManager" %>
<%@page import ="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import=" java.sql.ResultSet"%>


<%
    String rollno=request.getParameter("rollno");
    String pwd=request.getParameter("password");
    
    
Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // establish a connection with the database
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Raju@2020");

        // retrieve student data from the database
        String sql = "SELECT * FROM stud_user WHERE rollno = ? AND pwd = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, rollno);
        stmt.setString(2, pwd);
        rs = stmt.executeQuery();

        // compare input data with the retrieved data
        if (rs.next()) {
        session.setAttribute("rollno",rollno);
        
        
            // student data is valid, display success message
             response.sendRedirect("student.jsp");
        }
        else{
        out.println("Not a registered user!");
    }}
        catch(Exception e){
        out.println(e);
        
    }
    %>