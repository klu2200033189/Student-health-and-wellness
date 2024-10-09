<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Appointments</title>
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

        /* Main container styling */
        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1200px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .dashboard-container:hover {
            transform: scale(1.02);
            box-shadow: 0px 15px 35px rgba(0, 0, 0, 0.4);
        }

        h2 {
            color: #001a57;
            font-size: 36px;
            margin-bottom: 30px;
            font-weight: bold;
            background: -webkit-linear-gradient(#001a57, #004080);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: gradientAnimation 3s infinite alternate;
        }

        @keyframes gradientAnimation {
            0% { background-position: 0% 50%; }
            100% { background-position: 100% 50%; }
        }

        /* Table styling */
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
            background: linear-gradient(135deg, #004080 0%, #001a57 100%);
            color: white;
            font-weight: bold;
            letter-spacing: 1px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #eaeaea;
            transition: background-color 0.3s ease;
        }

        /* Button styling */
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

        /* Sticky Button for UVaChat */
        .sticky-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #001a57;
            color: white;
            border: none;
            border-radius: 50px;
            padding: 12px 25px;
            font-size: 18px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .sticky-button:hover {
            background-color: #004080;
            transform: scale(1.05);
        }

        .sticky-button a {
            color: white;
            text-decoration: none;
            font-weight: bold;
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
            box-shadow: 0px -3px 10px rgba(0, 0, 0, 0.2);
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
            <h2>Your Appointments</h2>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>User ID</th>
                        <th>Service</th>
                        <th>Date</th>
                        <th>Time</th>
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

                            // Execute the SQL query to fetch the appointments
                            String sql = "SELECT * FROM appointments";
                            rs = stmt.executeQuery(sql);

                            // Iterate through the result set and display each appointment
                            while (rs.next()) {
                                int id = rs.getInt("id");
                                String userId = rs.getString("user_id");
                                String service = rs.getString("service");
                                java.sql.Date date = rs.getDate("date");
                                java.sql.Time time = rs.getTime("time");
                    %>
                    <tr>
                        <td><%= id %></td>
                        <td><%= userId %></td>
                        <td><%= service %></td>
                        <td><%= date %></td>
                        <td><%= time %></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                    %>
                    <tr>
                        <td colspan="5">Error retrieving appointment data.</td>
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

            <a href="index1.jsp" class="btn-back">Back to Dashboard</a>
        </div>
    </main>

    <!-- Sticky Button -->
    <button class="sticky-button">
        <a href="chatbot-container.jsp">Questions? Ask UVaChat</a>
    </button>
    
   
</body>
</html>
