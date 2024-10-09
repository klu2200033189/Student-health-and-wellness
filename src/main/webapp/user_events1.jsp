<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Events</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/building.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.85);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1200px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #001a57;
            font-size: 36px;
            margin-bottom: 30px;
            font-weight: bold;
            text-align: center;
        }

        /* Grid container for the event cards */
        .event-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        /* Styling for each event card */
        .event-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            text-align: center;
        }

        .event-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .event-details {
            padding: 20px;
        }

        .event-title {
            font-size: 20px;
            color: #001a57;
            font-weight: bold;
        }

        .event-date {
            color: #555;
            margin: 10px 0;
            font-size: 16px;
        }

        .event-description {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
        }

        .learn-more-btn {
            background-color: #001a57;
            color: white;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            display: inline-block;
            margin-bottom: 20px;
        }

        .learn-more-btn:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Upcoming Events</h1>

        <div class="event-grid">
            <%
                // Database connection details
                String url = "jdbc:mysql://localhost:3306/student_health_wellness";
                String username = "root";
                String password = "#$Naseema12";

                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    // Load MySQL JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish the connection
                    conn = DriverManager.getConnection(url, username, password);

                    // Create the statement
                    stmt = conn.createStatement();

                    // SQL query to retrieve events from today onwards
                    String sql = "SELECT title, event_date, description FROM events WHERE event_date >= CURDATE()";
                    rs = stmt.executeQuery(sql);

                    // Iterate over the result set and display the data
                    while (rs.next()) {
                        String title = rs.getString("title");
                        java.sql.Date eventDate = rs.getDate("event_date");
                        String description = rs.getString("description");
            %>
            <!-- Event card -->
            <div class="event-card">
                <img src="images/stress management.jpg" alt="Event Image">
                <div class="event-details">
                    <div class="event-title"><%= title %></div>
                    <div class="event-date"><%= eventDate %></div>
                    <div class="event-description"><%= description %></div>
                    <a href="#" class="learn-more-btn">Learn More</a>
                </div>
            </div>
            <%
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
        </div>
    </div>
</body>
</html>
