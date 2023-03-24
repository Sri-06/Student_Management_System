<%@ page import="java.sql.*" %>
<%@ page import="java.security.MessageDigest" %>
<%@ page import= "org.postgresql.Driver"%>
<%@page import ="java.sql.DriverManager" %>
<%@page import ="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement"%>
<% if(request.isUserInRole("admin")){
%>
    



        

<%
    // get the username and password from the request parameters
    String username = request.getParameter("aname");
    String password = request.getParameter("apwd");
    
    Class.forName("org.postgresql.Driver");
    Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Raju@2020");

    // retrieve the salt and hash from the database for the given user
    PreparedStatement ps = conn.prepareStatement("SELECT salt, hash FROM admin_user WHERE username = ?");
    ps.setString(1, username);
    ResultSet rs = ps.executeQuery();
    String salt = "";
    String storedHash = "";
    while (rs.next()) {
        salt = rs.getString("salt");
        storedHash = rs.getString("hash");
    }
    rs.close();
    ps.close();

    // concatenate the salt and password
    String saltedPassword = salt + password;

    // hash the salted password using the same hashing algorithm used for storage
    MessageDigest digest = MessageDigest.getInstance("SHA-256");
    byte[] hashBytes = digest.digest(saltedPassword.getBytes());
    String hash = new String(hashBytes);

    // compare the generated hash with the stored hash
    if (hash.equals(storedHash)) {
    session = request.getSession();
        session.setAttribute("username",username);
        
        // valid password, redirect to the home page or some other secure page
        response.sendRedirect("admin.jsp");
    } else {
        // invalid password, redirect back to the login page or display an error message
        out.println("Not a registered admin!");
    }

    // close the database connection
    conn.close();
%>
<% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>
