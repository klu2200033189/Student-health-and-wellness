<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Event - Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/building1.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 600px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            color: #001a57;
            font-size: 32px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form-group input[type="date"] {
            font-size: 16px;
        }

        .btn-submit {
            background-color: #001a57;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #004080;
        }

        .btn-back {
            background-color: #001a57;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover {
            background-color: #004080;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #001a57;
            color: white;
            position: absolute;
            width: 100%;
            bottom: 0;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <header>
        <!-- Include your header here, if applicable -->
    </header>
    
    <main>
        <div class="form-container">
            <h2>Update Event</h2>
            <% 
                String eventId = request.getParameter("id");

                // Database connection details
                String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness";
                String dbUser = "root";
                String dbPassword = "MadasuPrasanna@10";

                Connection conn = null;
                PreparedStatement statement = null;
                ResultSet resultSet = null;

                String title = "";
                String eventDate = "";
                String description = "";

                try {
                    // Load JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Connect to the database
                    conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                    // SQL query to get event details
                    String sql = "SELECT title, event_date, description FROM events WHERE id = ?";
                    statement = conn.prepareStatement(sql);
                    statement.setInt(1, Integer.parseInt(eventId));
                    resultSet = statement.executeQuery();

                    if (resultSet.next()) {
                        title = resultSet.getString("title");
                        eventDate = resultSet.getDate("event_date").toString();
                        description = resultSet.getString("description");
                    } else {
                        out.println("<p>Event not found.</p>");
                    }
                } catch (Exception e) {
                    out.println("<p>Error retrieving event data.</p>");
                    e.printStackTrace();
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
            %>
            <form action="update-event-process.jsp" method="post">
                <input type="hidden" name="id" value="<%= eventId %>">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" id="title" name="title" value="<%= title %>" required>
                </div>
                <div class="form-group">
                    <label for="event_date">Event Date</label>
                    <input type="date" id="event_date" name="event_date" value="<%= eventDate %>" required>
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" rows="4" required><%= description %></textarea>
                </div>
                <button type="submit" class="btn-submit">Update Event</button>
            </form>
            <a href="admin-manage-events.jsp" class="btn-back">Back to Event List</a>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 KL University. All Rights Reserved.</p>
    </footer>
</body>
</html>
