<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Report</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="dashboard-container">
        <h2>Report Details</h2>
        <%
            String reportId = request.getParameter("reportId");
            String url = "jdbc:mysql://localhost:3306/student_health_wellness";
            String username = "root";
            String password = "#$Naseema12";

            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, password);
                stmt = conn.createStatement();

                String sql = "SELECT * FROM reports WHERE id=" + reportId;
                rs = stmt.executeQuery(sql);

                if (rs.next()) {
                    String reportType = rs.getString("report_type");
                    java.sql.Date generatedOn = rs.getDate("generated_on");
                    String reportDetails = rs.getString("details");

                    %>
                    <p><strong>Report Type:</strong> <%= reportType %></p>
                    <p><strong>Generated On:</strong> <%= generatedOn %></p>
                    <p><strong>Details:</strong></p>
                    <pre><%= reportDetails %></pre>
                    <%
                } else {
                    %>
                    <p>Report not found.</p>
                    <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        %>
        <a href="admin-reports.jsp" class="btn-back">Back to Reports</a>
    </div>
</body>
</html>
