import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_wellness", "root", "#$Naseema12");

            String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);

            stmt.executeUpdate();
            conn.close();

            response.sendRedirect("login.jsp"); // Redirect to login page after successful signup
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("signup.jsp?error=1"); // Redirect back to signup page with error
        }

    }
}
