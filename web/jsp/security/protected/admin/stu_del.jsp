<%-- 
    Document   : admin
    Created on : 23-Feb-2023, 2:51:32 pm
    Author     : sri-pt7195
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <% if(request.isUserInRole("admin")){
%>
    
<html>
   



        
    <head>
        <link rel="stylesheet" type="text/css" href="admin.css">
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
        <header class="header">
		
		<a href="">Admin Dashboard</a>

		<div class="logout">
			
			<a href="index.html" class="btn btn-primary">Logout</a>

		</div>

	</header>


	<aside>
		
		<ul>
                    <li>
				<a href="./admit.jsp">Admission</a>
			</li>

			<li>
				<a href="./add_student.jsp">Add Student</a>
			</li>
			
			

			

			<li>
				<a href="view_student.jsp">View Student</a>
			</li>
                        <li>
				<a href="add_teach.jsp">Add Teacher</a>
			</li>

			

			<li>
				<a href="view_teach.jsp">View Teacher</a>
			</li>
			
			<li>
				<a href="view_scourse.jsp">View Courses</a>
			</li>
                        


		</ul>


	</aside>


	<div class="content">
            <center>
		
            <h1>Enter Roll Number to Delete</h1>
  <form method="post" action="delete.jsp">
    Roll Number: <input type="text" name="rollno" pattern="^[a-zA-Z0-9]+$"><br>
    <br>
    <input type="submit"class="btn btn-primary" value="Delete">
  </form>
            </center>


	</div>

</body>
</html>
<% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>
        
        
    
