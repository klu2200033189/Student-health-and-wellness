
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EventDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/student_health_wellness";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "#$Naseema12";

    public List<Event> getAllEvents() throws Exception {
        List<Event> events = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "SELECT id, title, event_date, description FROM events";
            try (PreparedStatement statement = conn.prepareStatement(sql);
                 ResultSet resultSet = statement.executeQuery()) {

                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String title = resultSet.getString("title");
                    java.sql.Date eventDate = resultSet.getDate("event_date");
                    String description = resultSet.getString("description");
                    events.add(new Event(id, title, eventDate, description));
                }
            }
        }
        return events;
    }

    public void deleteEvent(int id) throws Exception {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "DELETE FROM events WHERE id = ?";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setInt(1, id);
                statement.executeUpdate();
            }
        }
    }

    // Other CRUD methods (create, update) can be added here
}
