<!DOCTYPE html>
<html>
<head>
    <title>Login - Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/adminlogin.css">
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="AdminLoginServlet" method="post">
            <label for="adminname">Admin Username:</label>
            <input type="text" id="adminname" name="adminname" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Login</button>
        </form>
        <p><a href="forgot_password.jsp">Forgot your password?</a></p>

        <!-- Display login error message -->
        <%
            String error = request.getParameter("error");
            if ("invalid".equals(error)) {
                out.println("<p style='color:red;'>Invalid username or password</p>");
            } else if ("server".equals(error)) {
                out.println("<p style='color:red;'>Server error, please try again later</p>");
            }
        %>
    </div>
</body>
</html>
