import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class TestEmail {
    public static void main(String[] args) {
        String to = "2200033189cseh@gmail.com";  // Replace with the recipient's email
        String from = "arshashaik250@gmail.com";     // Replace with your email
        String host = "smtp.gmail.com";             // Use the correct SMTP server

        Properties properties = System.getProperties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("arshashaik250@gmail.com", "#$naseema12");  // Replace with your email and password
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject("Test Email");
            message.setText("This is a test email from the Java program.");

            Transport.send(message);
            System.out.println("Email Sent Successfully");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }
}
