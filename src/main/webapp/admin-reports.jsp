<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Reports - Student Health and Wellness</title>
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

        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1200px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #001a57;
            font-size: 32px;
            margin-bottom: 20px;
            text-transform: uppercase;
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
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #004080;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #eaeaea;
        }

        .btn-back {
            background-color: #001a57;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            text-decoration: none;
            font-size: 18px;
            margin-top: 30px;
            display: inline-block;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-back:hover {
            background-color: #004080;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <header>
        <!-- Include your header or navigation here -->
    </header>

    <main>
        <div class="dashboard-container">
            <h2>System Reports</h2>

            <table>
                <thead>
                    <tr>
                        <th>Report ID</th>
                        <th>Report Type</th>
                        <th>Generated On</th>
                        <th>Details</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Database connection details
                        String url = "jdbc:mysql://localhost:3306/student_health_wellness";
                        String username = "root";
                        String password = "#$Naseema12";

                        Connection conn = null;
                        Statement stmt = null;
                        ResultSet rs = null;

                        try {
                            // Load the MySQL driver
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            // Establish connection
                            conn = DriverManager.getConnection(url, username, password);
                            stmt = conn.createStatement();

                            // SQL query to fetch reports data
                            String sql = "SELECT id, report_type, generated_on FROM reports";
                            rs = stmt.executeQuery(sql);

                            // Iterate through the result set and display each report
                            while (rs.next()) {
                                int id = rs.getInt("id");
                                String reportType = rs.getString("report_type");
                                java.sql.Date generatedOn = rs.getDate("generated_on");
                    %>
                    <tr>
                        <td><%= id %></td>
                        <td><%= reportType %></td>
                        <td><%= generatedOn %></td>
                        <td><a href="view-report.jsp?reportId=<%= id %>">View Details</a></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                    %>
                    <tr>
                        <td colspan="4">Error fetching report data.</td>
                    </tr>
                    <%
                        } finally {
                            if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                            if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                        }
                    %>
                </tbody>
            </table>

            <a href="admin_dashboard.jsp" class="btn-back">Back to Dashboard</a>
        </div>
    </main>
</body>
</html>
