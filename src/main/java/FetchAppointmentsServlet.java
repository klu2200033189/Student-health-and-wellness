import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FetchAppointmentsServlet")
public class FetchAppointmentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Database connection details
        String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness?serverTimezone=UTC";
        String dbUser = "root";
        String dbPassword = "#$Naseema12";

        ArrayList<Appointment> appointments = new ArrayList<>();

        try {
            // Load the new JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
            System.out.println("Database connection established.");

            // SQL query to fetch all appointments
            String sql = "SELECT * FROM appointments";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            // Check if the ResultSet has data
            while (resultSet.next()) {
                Appointment appointment = new Appointment();
                appointment.setId(resultSet.getInt("id"));
                appointment.setUserId(resultSet.getString("user_id"));
                appointment.setService(resultSet.getString("service"));
                appointment.setDate(resultSet.getDate("date"));
                appointment.setTime(resultSet.getTime("time"));
                appointments.add(appointment);
                System.out.println("Fetched appointment ID: " + appointment.getId());
            }

            // Close the connection
            conn.close();
            System.out.println("Database connection closed.");

        } catch (Exception e) {
            e.printStackTrace();
        }

        // Set appointments list as request attribute
        request.setAttribute("appointments", appointments);

        // Forward to appointments.jsp
        request.getRequestDispatcher("appointments.jsp").forward(request, response);
    }
}
