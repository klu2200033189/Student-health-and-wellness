<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String oldPassword = request.getParameter("oldPassword");
    String newPassword = request.getParameter("newPassword");
    Connection conn = null; // Assume you have your database connection
    PreparedStatement stmt = null;
    
    try {
        // Connect to your database
        // conn = DriverManager.getConnection("jdbc:mysql://yourdatabaseurl", "username", "password");

        // Verify the old password
        String query = "SELECT * FROM users WHERE email = ? AND password = ?";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, email);
        stmt.setString(2, oldPassword); // You should hash this for security
        ResultSet rs = stmt.executeQuery();
        
        if (rs.next()) {
            // Old password is correct, now update the new password
            String updateQuery = "UPDATE users SET password = ? WHERE email = ?";
            stmt = conn.prepareStatement(updateQuery);
            stmt.setString(1, newPassword); // Hash this before saving
            stmt.setString(2, email);
            stmt.executeUpdate();
            out.println("<h3>Password updated successfully!</h3>");
        } else {
            out.println("<h3>Old password is incorrect. Please try again.</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { /* ignored */ }
        if (conn != null) try { conn.close(); } catch (SQLException e) { /* ignored */ }
    }
%>
