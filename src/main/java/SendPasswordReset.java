import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import java.security.SecureRandom;
import java.math.BigInteger;
import java.sql.*;

public class SendPasswordReset {
    public static void main(String[] args) {
        String to = "2200033189cseh@gmail.com";  // Recipient's email
        String from = "2200033191kluniversity@gmail.com"; // Sender's email (updated)
        String host = "smtp.gmail.com";          // Gmail SMTP server

        // Setup properties for Gmail SMTP
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        // Create a session with authentication
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // Use an App Password for the sender email
                return new PasswordAuthentication(from, "qpie_txxa_gcsv_ojtu"); // Replace with a valid app password
            }
        });

        // Step 1: Connect to the database to verify the user's email
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String token = "";

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver"); // Updated to new MySQL Driver
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_wellness", "root", "#$Naseema12");

            // Query to check if the email exists in the database
            String query = "SELECT * FROM users WHERE email = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, to);
            rs = stmt.executeQuery();

            if (rs.next()) {
                // Step 2: Generate a secure token for password reset
                SecureRandom random = new SecureRandom();
                token = new BigInteger(130, random).toString(32); // Generate a secure random token

                // Store the token and expiry time in the database
                String updateQuery = "UPDATE users SET reset_token = ?, token_expiry = ? WHERE email = ?";
                PreparedStatement updateStmt = conn.prepareStatement(updateQuery);
                updateStmt.setString(1, token);
                updateStmt.setTimestamp(2, new Timestamp(System.currentTimeMillis() + 3600 * 1000)); // Set expiry for 1 hour
                updateStmt.setString(3, to);
                updateStmt.executeUpdate();

                // Step 3: Send the reset email
                String resetLink = "http://localhost:8080/Healthwell/reset_password.jsp?token=" + token;

                // Create a default MimeMessage object
                MimeMessage message = new MimeMessage(session);

                // Set the "from" field of the email
                message.setFrom(new InternetAddress(from));

                // Set the recipient
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

                // Set the subject of the email
                message.setSubject("Password Reset Request");

                // Set the body of the email
                message.setText("To reset your password, click the link below:\n" + resetLink + "\nThis link will expire in 1 hour.");

                // Send the message
                Transport.send(message);
                System.out.println("Email sent successfully.");
            } else {
                System.out.println("Email not found in the database.");
            }
        } catch (MessagingException mex) {
            System.out.println("Error: Unable to send email.");
            mex.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("Error: Unable to load database driver class!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error: Unable to connect to the database!");
            e.printStackTrace();
        } finally {
            // Close database resources
            if (rs != null) try { rs.close(); } catch (SQLException e) { /* Ignored */ }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { /* Ignored */ }
            if (conn != null) try { conn.close(); } catch (SQLException e) { /* Ignored */ }
        }
    }
}
