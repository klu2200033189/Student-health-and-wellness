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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Database connection details
        String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness";
        String dbUser = "root";
        String dbPassword = "#$Naseema12";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // SQL query to check user credentials
            String sql = "SELECT username, email FROM users WHERE username = ? AND password = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Successful login, set user details in session
                HttpSession session = request.getSession();
                session.setAttribute("username", resultSet.getString("username"));
                session.setAttribute("email", resultSet.getString("email"));

                // Redirect to profile page
                response.sendRedirect("index1.jsp");
            } else {
                // Login failed, redirect to login page with an error
                response.sendRedirect("login.jsp?error=invalid");
            }

            // Close resources
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
