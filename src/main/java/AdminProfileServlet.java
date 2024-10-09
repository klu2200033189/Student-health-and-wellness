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

@WebServlet("/AdminProfileServlet")
public class AdminProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String adminname = (String) session.getAttribute("adminname");

        if (adminname == null) {
            response.sendRedirect("admin_login.jsp");
            return;
        }

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_wellness", "root", "#$Naseema12");

            String query = "SELECT adminname, email FROM admin WHERE adminname=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, adminname);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String email = rs.getString("email");
                session.setAttribute("email", email);
                request.getRequestDispatcher("admin_profile.jsp").forward(request, response);
            } else {
                response.sendRedirect("admin_dashboard.jsp?error=1"); // Redirect to dashboard if admin not found
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to an error page if there's an issue
        }
    }
}
