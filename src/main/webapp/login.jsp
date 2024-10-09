<!DOCTYPE html>
<html>
<head>
    <title>Login - Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Login</button>
        </form>
        
        <p>Don't have an account? <a href="signup.jsp">Sign up here</a></p>
        <p><a href="forgot_password.jsp">Forgot your password?</a></p>
    </div>
</body>
</html>
