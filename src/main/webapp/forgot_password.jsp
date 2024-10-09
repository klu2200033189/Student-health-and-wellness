<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>Forgot Password</h2>
    <form action="send_reset_link.jsp" method="POST">
        <label for="email">Enter your email or username:</label><br>
        <input type="text" id="email" name="email" required><br><br>
        <input type="submit" value="Send Reset Link">
    </form>
</body>
</html>
