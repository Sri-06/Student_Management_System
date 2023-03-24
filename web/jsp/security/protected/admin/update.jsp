<%-- 
    Document   : add_student
    Created on : 23-Feb-2023, 10:57:03 pm
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
        <title>student Page</title>
        <style type="text/css">
            label{
                display:inline-block;
                text-align: right;
                width:100px;
                padding-top: 10px;
                padding-bottom: 10px;
            }
            .div_deg{
                background-color: skyblue;
                width:500px;
                padding-top: 70px;
                padding-bottom: 70px;
                
            
            
        </style>
    </head>
    <body>
        
        
        <h1>Add Student</h1>
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
				<a href="view_stu.jsp">View Student</a>
			</li>

			<li>
				<a href="add_teach.jsp">Add Teacher</a>
			</li>

			<li>
				<a href="">View Teacher</a>
			</li>
			<li>
				<a href="add_course.jsp">Add Courses</a>
			</li>
			<li>
				<a href="view_course.jsp">View Courses</a>
			</li>


		</ul>


	</aside>


	<div class="content">
            <center>
		
            <h1>Add Student</h1>
            
            <div class="div_deg">
                <form method="POST" action="stu_update.jsp">
                
            
            <div>
                <form>
                    
                    <div>
                        <label>Roll No</label>
                        <input type="text" name="rollno">
                        
                    </div>
                    <div>
                        <label>Name</label>
                        <input type="text" name="name">
                        
                    </div>
                    <div>
                        <label>Email</label>
                        <input type="text" name="email">
                        
                    </div>
                    <div>
                        <label>Gender</label>
                        <input type="text" name="gender">
                        
                    </div>
                    <div>
                        <label>CGPA</label>
                        <input type="text" name="cgpa">
                        
                    </div>
                    <div>
                        <input type="submit" name="add_student" class="btn btn-primary"value="Update Student">
                        
                        </div>
                        
                    
                        </form>
            </div>

            </div>         </center>
	</div>
            

</body>
</html>
<% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>

    
