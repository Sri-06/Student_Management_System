<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  if (request.getParameter("logoff") != null) {
    session.invalidate();
    response.sendRedirect("index.jsp");
    return;
  }
%>
<html>
    <head>
        <title>index</title>
    </head>
    <body>
    <% 
        String role = request.getParameter("role");
        
        if (role == null) 
            role = "";
        if (role.length() > 0) {
            if (request.isUserInRole(role)) {
                if (role.equals("admin")) {
                    response.sendRedirect("admin/admin.jsp");
                }
                else {
                    response.sendRedirect("student/student.jsp");
                }
            }
        }

    %>

Enter your user type:
<form method="GET" action='<%= response.encodeURL("index.jsp") %>'>
<input type="text" name="role" >
<input type="submit" >
</form>
<br><br>
<a href='<%= response.encodeURL("index.jsp?logoff=true") %>'>LogOff here</a>.
This should cause you to be returned to the login page after the redirect
that is performed.
</body>
</html>