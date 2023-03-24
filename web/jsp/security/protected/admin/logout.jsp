<% if(request.isUserInRole("admin")){
%>
    



        
<%
    
    
     session = request.getSession(false);
    if (session != null) {
      session.invalidate();
    }
    
    // Redirect the user to the login page
    response.sendRedirect("login.jsp");
  
    
%>
<% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>
    