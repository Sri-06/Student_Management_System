<%
    
    
     session = request.getSession(false);
    if (session != null) {
      session.invalidate();
    }
    
    // Redirect the user to the login page
    response.sendRedirect("login.jsp");
  
    
%>
    