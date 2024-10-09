<%@ page import="java.sql.*" %>
<%@ page import="java.security.SecureRandom" %>

<%
    String token = request.getParameter("token");
    String newPassword = request.getParameter("newPassword");
    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // 1. Establish database connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_wellness", "root", "#$Naseema12");

        // 2. Check if the token is valid and not expired
        String query = "SELECT * FROM users WHERE reset_token = ? AND token_expiry > NOW()";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, token);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            // 3. Update the user's password if the token is valid
            String updateQuery = "UPDATE users SET password = ?, reset_token = NULL, token_expiry = NULL WHERE reset_token = ?";
            PreparedStatement updateStmt = conn.prepareStatement(updateQuery);
            updateStmt.setString(1, newPassword);  // You may want to hash the password using MD5 or SHA for security
            updateStmt.setString(2, token);
            updateStmt.executeUpdate();

            out.println("<h3>Password has been reset successfully.</h3>");
        } else {
            out.println("<h3>Invalid or expired token.</h3>");
        }

    } catch (ClassNotFoundException e) {
        out.println("<h3>Error: Unable to load database driver class!</h3>");
        e.printStackTrace();
    } catch (SQLException e) {
        out.println("<h3>Error: Unable to connect to the database!</h3>");
        e.printStackTrace();
    } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { /* Ignored */ }
        if (conn != null) try { conn.close(); } catch (SQLException e) { /* Ignored */ }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
</head>
<body>
    <h2>Reset Your Password</h2>
    <form method="POST">
        <label for="newPassword">Enter New Password:</label><br>
        <input type="password" id="newPassword" name="newPassword" required><br><br>
        <input type="submit" value="Reset Password">
    </form>
</body>
</html>
