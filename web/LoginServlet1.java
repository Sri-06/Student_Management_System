/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

@WebServlet(urlPatterns = {"/LoginServlet1"})
public class LoginServlet1 extends HttpServlet {

   @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
  {
      System.out.println("response"+response);
    String username = request.getParameter("username");
    String password = request.getParameter("password");
      System.out.println("username"+username +"password"+password);
     try {
      // Get a connection to the database using the JNDI name
      Context initCtx = new InitialContext();
      Context envCtx = (Context) initCtx.lookup("java:/comp/env");
      DataSource ds = (DataSource) envCtx.lookup("jdbc/postgres");
      Connection conn = ds.getConnection();
      System.out.println("Connection Established!");
      System.out.println(conn);

      // Execute a SQL query
      String sql = "SELECT role FROM users WHERE username = ? AND password = ?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, username);
    pstmt.setString(2, password);
    ResultSet rs = pstmt.executeQuery();
//    System.out.println(rs);

    // Redirect the user to the appropriate page based on their role
    if (rs.next()) {
      String role = rs.getString("role");
        System.out.println("role"+role);
      if (role.equals("admin")) {
        response.sendRedirect("admin.jsp");
      } else {
        response.sendRedirect("student.jsp");
      }
    } else {
      response.sendRedirect("login.jsp");
    }
    rs.close();
    pstmt.close();
    conn.close();

  } catch (SQLException e) {
    // Handle any errors
  } catch (NamingException e) {
    // Handle any errors
  }
  }
}





      