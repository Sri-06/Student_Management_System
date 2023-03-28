/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    
private static final long serialVersionUID = 1L;
 @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
            System.out.println("login");
            PrintWriter writer = response.getWriter();
            
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
           
            String role = null;
            String username = request.getParameter("j_username");
            String password = request.getParameter("j_password");
            System.out.println(username);
            System.out.println(password);
            
            try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/postgres");
            conn = ds.getConnection();
            
            System.out.println("Connection Established!");
            String dbName=conn.getCatalog();
            System.out.println(dbName);
            System.out.println(conn);
          
            stmt = conn.prepareStatement("SELECT role FROM postgres.public.users WHERE username=? AND password=?");
            stmt.setString(1, username);
            stmt.setString(2, password);
            rs = stmt.executeQuery();
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnsNumber;
            columnsNumber = rsmd.getColumnCount();
            
    // If the query returned a row, get the role from the result set
            if (rs.next()) {
                role = rs.getString("role");
                System.out.println(role);
//                if(role.equals("admin")){
//                    response.sendRedirect("/jsp/security/protected/admin/admin.jsp");
//                }
//                else if(role.equals("student")){
//                    response.sendRedirect("/jsp/security/protected/student/student.jsp");
//                }
//                else{
//                    response.sendRedirect("/jsp/security/protected/error.jsp");
//                }



//                while (rs.next()) {
//                for (int i = 1; i <= columnsNumber; i++) {
//                if (i > 1) System.out.print(",  ");
//                String columnValue = rs.getString(i);
//                System.out.print(columnValue + " " + rsmd.getColumnName(i));
//                }
//                System.out.println("");
//                }
                    }
                } catch (SQLException ex) {
                  // Handle any database errors
                } catch (NamingException ex) {
                        Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                  // Close the database resources
                  try { rs.close(); } catch (Exception e) { }
                  try { stmt.close(); } catch (Exception e) { }
                  try { conn.close(); } catch (Exception e) { }
                }

  // Redirect the user to the appropriate page based on their role
                   if (role == null) {
    // If the user's role is null, they are not authorized to access any pages
                response.sendRedirect("jsp/security/protected/error.jsp");
                        } else if (role.equals("admin")) {
    // If the user's role is "admin", redirect them to the admin page
                String url = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort()+ "/Student_Management_System/jsp/security/protected/admin/admin.jsp";
                response.sendRedirect(url);
                        } else if (role.equals("student")) {
    // If the user's role is "user", redirect them to the user page
                response.sendRedirect("jsp/security/protected/student/student.jsp");
                        } else {
    // If the user's role is not recognized, they are not authorized to access any pages
                response.sendRedirect("jsp/security/protected/error.jsp");
  }
    }
}




             
            