<!DOCTYPE html>
<html>
<head>
    <title>Sign Up - Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/signup.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
<body>
    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="SignupServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Sign Up</button>
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>
</body>
</html>
