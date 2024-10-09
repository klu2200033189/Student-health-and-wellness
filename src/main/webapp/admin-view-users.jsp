<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Users - Admin Dashboard</title>
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

        /* Main container styling */
        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1200px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            color: #001a57;
            font-size: 32px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 16px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
            color: #001a57;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #eaeaea;
        }

        /* Button styling for back to dashboard */
        .btn-back {
            background-color: #001a57;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            margin-top: 20px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover {
            background-color: #004080;
        }

        /* Footer styling */
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
        <div class="dashboard-container">
            <h2>Users List</h2>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
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

                            // SQL query to retrieve all users
                            String sql = "SELECT id, username, email FROM users";
                            statement = conn.prepareStatement(sql);

                            resultSet = statement.executeQuery();

                            while (resultSet.next()) {
                                int id = resultSet.getInt("id");
                                String username = resultSet.getString("username");
                                String email = resultSet.getString("email");
                    %>
                    <tr>
                        <td><%= id %></td>
                        <td><%= username %></td>
                        <td><%= email %></td>
                    </tr>
                    <% 
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                    %>
                    <tr>
                        <td colspan="3">Error retrieving user data.</td>
                    </tr>
                    <% 
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
                </tbody>
            </table>

            <a href="admin_dashboard.jsp" class="btn-back">Back to Dashboard</a>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 KL University - All rights reserved</p>
    </footer>
</body>
</html>
