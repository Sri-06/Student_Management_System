<%-- 
    Document   : add-teach
    Created on : 24-Feb-2023, 11:22:48 am
    Author     : sri-pt7195
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Add Teacher</title>
        <style type="text/css">
            .div_deg{
                background-color: skyblue;
                padding-top:70px;
                padding-bottom: 70px;
                width:500px;
                
            }
            </style>
        
    </head>
    <body>
        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
        <header class="header">
		
		<a href="">Admin Dashboard</a>

		<div class="logout">
			
			<a href="logout.jsp" class="btn btn-primary">Logout</a>

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
				<a href="./view_stu.jsp">View Student</a>
			</li>

			<li>
				<a href="./add_teach.jsp">Add Teacher</a>
			</li>

			<li>
				<a href="view_teach.jsp">View Teacher</a>
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
            <h1> Add Teacher </h1>
            <div class="div_deg">
                <form action="teach_db.jsp" method="POST"  >
                    <div><!-- comment -->
                        <label>Teacher Name:</label>
                        <input type="text" name="name" pattern="[a-zA-Z]+\.[a-zA-Z]+{1,32}" required>
                    </div>
                    <br>
                    <div><!-- comment -->
                        <label>Description:</label>
                        <input type="text" name="des" required>
                    </div>
                    <br>
                    
                    
                    <br>
                    <div><!-- comment -->
                        
                        <input type="submit" name="Add-teacher" value="Add-Teacher"class="btn btn-primary">
                    </div><!-- comment -->
                    <!-- comment -->
                    <!-- comment -->
                    
                    
                    
                    
                    
                    <!-- comment -->
                </form>
            </div>
            </center>


	</div>
        <script src ="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
        
        <script type="text/javascript">
            var status=document.getElementById("status").value;
            if(status === "success"){
            swal("Congrats","Teacher Added","success");
        }
        </script>

</body>
</html>
<% }else{ %>
<h1>Unauthorized Access...Please contact Administrator.</h1>
<% } %>
