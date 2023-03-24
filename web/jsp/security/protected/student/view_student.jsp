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
        <title>Student Page</title>
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
		
		<a href="">Student Dashboard</a>

		<div class="logout">
			
			<a href="logout.jsp" class="btn btn-primary">Logout</a>

		</div>

	</header>


	<aside>
		
		<ul>
			
			

			

			<li>
				<a href="view_student.jsp">View Student</a>
			</li>

			

			<li>
				<a href="view_steach.jsp">View Teacher</a>
			</li>
                        
                        <li>
				<a href="view_scourse.jsp">View Courses</a>
			</li>
			
			
                        <li>
				<a href="results.jsp"> Results</a>
			</li>


		</ul>


	</aside>


	<div class="content">
            <center>
		
            <h1>Student Dashboard</h1>
            <br>
            
            <table border="1px">
               <!-- comment -->
                
                <tr>
                    <th class="table-th">Roll NO</th>
                    <th class="table-th">Name</th>
                    <th class="table-th">Email</th>
                    <th class="table-th">Gender</th>
                    <th class="table-th">CGPA</th><!-- comment -->
                    
                </tr>
            



        <%
            try{
            Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Raju@2020");
Statement ps=con.createStatement();
String str="select * from student";
ResultSet rs=ps.executeQuery(str);
while(rs.next()){


%>

<tr>
    
    
    <td class="table-td"><%=rs.getString("rollno")%></td>
    <td class="table-td"><%=rs.getString("name")%></td>
    <td class="table-td"><%=rs.getString("email")%></td>
    <td class="table-td"><%=rs.getString("gender")%></td>
    <td class="table-td"><%=rs.getString("cgpa")%></td>
</tr><%}
}catch(Exception e)
            {
            out.println(e);
            }
            
            %>
    


	</div>
        </center>

</body>
</html>
        
        
    
