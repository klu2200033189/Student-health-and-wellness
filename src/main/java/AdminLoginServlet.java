import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String adminname = request.getParameter("adminname");
        String password = request.getParameter("password");

        // Database connection details
        String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness";
        String dbUser = "root";
        String dbPassword = "#$Naseema12";

        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // SQL query to check admin credentials and retrieve adminname, email, and role
            String sql = "SELECT adminname, email, role FROM admin WHERE adminname = ? AND password = ? AND role = 'admin'";
            statement = conn.prepareStatement(sql);
            statement.setString(1, adminname);
            statement.setString(2, password);

            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Successful login, set adminname, email, and role in session
                HttpSession session = request.getSession();
                session.setAttribute("adminname", resultSet.getString("adminname"));
                session.setAttribute("email", resultSet.getString("email"));
                session.setAttribute("role", resultSet.getString("role")); // Store role

                // Redirect to admin profile page
                response.sendRedirect("admin_profile.jsp");
            } else {
                // Login failed, redirect to admin login page with an error
                response.sendRedirect("admin_login.jsp?error=invalid");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect with a server error
            response.sendRedirect("admin_login.jsp?error=server");
        } finally {
            // Close resources
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
