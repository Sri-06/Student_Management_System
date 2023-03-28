<html>
<head>
<title>Login Page</title>
</head>
<body bgcolor="white">
<form method="post" action="<%= request.getContextPath() %>/LoginServlet" >
  <table border="0" cellspacing="5">
    <tr>
      <th align="right">Username:</th>
      <td align="left"><input type="text" id="name" pattern="[a-zA-Z][a-zA-Z0-9-_]{1,20}" name="j_username"></td>
    </tr>
    <tr>
      <th align="right">Password:</th>
      <td align="left"><input type="password" id="password"  name="j_password" required></td>
    </tr>
    <tr>
      <td align="right"><input type="submit" id="submit-button" value="Log In" ></td>
      <td align="left"><input type="reset"></td>
    </tr>
  </table>
</form>
</body>
</html>




