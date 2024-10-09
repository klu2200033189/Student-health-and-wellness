<%@ page import="java.sql.*" %>
<%
    String token = request.getParameter("token");
    String newPassword = request.getParameter("newPassword");
    Connection conn = null;
    PreparedStatement stmt = null;

    if (token != null && newPassword != null) {
        try {
            // 1. Establish Database Connection
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_wellness", "root", "#$Naseema12");

            // 2. Verify the token and check if it's valid
            String query = "SELECT * FROM users WHERE reset_token = ? AND token_expiry > NOW()";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, token);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // 3. Update the password
                String updateQuery = "UPDATE users SET password = ?, reset_token = NULL, token_expiry = NULL WHERE reset_token = ?";
                PreparedStatement updateStmt = conn.prepareStatement(updateQuery);
                updateStmt.setString(1, newPassword); // Ideally, hash the password
                updateStmt.setString(2, token);
                updateStmt.executeUpdate();

                out.println("<h3>Your password has been successfully updated.</h3>");
            } else {
                out.println("<h3>Invalid or expired token.</h3>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { /* Ignored */ }
            if (conn != null) try { conn.close(); } catch (SQLException e) { /* Ignored */ }
        }
    } else {
%>
        <form action="reset_password.jsp" method="POST">
            <label for="newPassword">Enter new password:</label><br>
            <input type="password" id="newPassword" name="newPassword" required><br><br>
            <input type="hidden" name="token" value="<%=token%>">
            <input type="submit" value="Reset Password">
        </form>
<%
    }
%>
