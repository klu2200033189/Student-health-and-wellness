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
            min-height: 600px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            color: #001a57;
            font-size: 36px;
            margin-bottom: 30px;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #001a57;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #eaeaea;
        }

        .btn {
            background-color: #001a57;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #004080;
        }

        .video-section {
            margin: 50px auto;
            max-width: 1000px;
            text-align: center;
        }

        .video-section h2 {
            margin-bottom: 30px;
            font-size: 28px;
            color: #001a57;
        }

        .video-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .video-item {
            flex: 1 1 calc(50% - 40px);
            max-width: 600px;
        }

        .video-item iframe {
            width: 100%;
            height: 350px;
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .video-description {
            font-size: 16px;
            color: #333;
            margin-top: 10px;
        }
        .home-btn {
            display: inline-block;
            margin-top: 30px;
            background-color: #001a57;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            text-decoration: none;
        }

        .home-btn:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Upcoming Events</h1>

        <table>
            <tr>
                <th>Title</th>
                <th>Date</th>
                <th>Description</th>
            </tr>

            <%
                // Database connection details
                String url = "jdbc:mysql://localhost:3306/student_health_wellness";
                String username = "root";
                String password = "MadasuPrasanna@10";

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
            <tr>
                <td><%= title %></td>
                <td><%= eventDate %></td>
                <td><%= description %></td>
            </tr>
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
        </table>
         <!-- Home button -->
        <a href="index1.jsp" class="home-btn">Home</a>
    </div>

    <div class="video-section">
        <h2>Related Videos</h2>
        <div class="video-list">
            <div class="video-item">
                <iframe src="https://www.youtube.com/embed/rXsPpYXBKWo" allowfullscreen></iframe>
                <p class="video-description">Video about managing mental health and well-being.</p>
            </div>
            <div class="video-item">
                <iframe src="https://www.youtube.com/embed/QhKdbBCLWzo" allowfullscreen></iframe>
                <p class="video-description">Tips for boosting overall wellness and physical health.</p>
            </div>
            <div class="video-item">
                <iframe src="https://www.youtube.com/embed/Aa0mVQgoWLg" allowfullscreen></iframe>
                <p class="video-description">Insightful discussion on the importance of regular exercise.</p>
            </div>
        </div>
    </div>
</body>
</html>
