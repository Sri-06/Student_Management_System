<%-- 
    Document   : view_stu
    Created on : 24-Feb-2023, 12:28:11 am
    Author     : sri-pt7195
--%>

<%-- 
    Document   : admin
    Created on : 23-Feb-2023, 2:51:32 pm
    Author     : sri-pt7195
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import= "org.postgresql.Driver"%>
<%@page import ="java.sql.DriverManager" %>
<%@page import ="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Statement"%>

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
        <title>Course Page</title>
        <style type="text/css">
            .table-th{
               
                
                padding:20px;
                font-size: 20px;
                
            }
            .table-td{
                
                padding:20px;
                font-size:20px;
                background-color:skyblue;
            }
            table{
                text-align: center;
            }
            
            
                
            </style>
    </head>
    <body>
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
				<a href="./view_student.jsp">View Student</a>
			</li>

			<li>
				<a href="add_teach.jsp">Add Teacher</a>
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
		
            <h1><center>Teachers Record</center></h1>
            <br>
            <center>
            
            <table border="1px">
               <!-- comment -->
                
                <tr>
                    <th class="table-th">Name</th>
                    <th class="table-th">Description</th>
                    
                    
                    
                </tr>
            



        <%
            try{
            Class.forName("org.postgresql.Driver");
            Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Raju@2020");
            Statement ps=con.createStatement();
            String str="select * from teachers";
            ResultSet rs=ps.executeQuery(str);
            while(rs.next()){

%>

<tr>
    
    
    <td class="table-td"><%=rs.getString("name")%></td>
    <td class="table-td"><%=rs.getString("description")%></td>
        
    
</tr><%}
}catch(Exception e)
            {
            out.println(e);
            }
            
            %>
    
        </div>
        </center>
</table>


</body>
</html>
<% }else{ %>
<h1>Unauthorized Access..Please contact Administrator!.</h1>
<% } %>
        
        
    
