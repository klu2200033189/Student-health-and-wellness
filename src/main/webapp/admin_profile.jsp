<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Profile</title>
    <link rel="stylesheet" type="text/css" href="css/adminprofile.css">
    <style>
        /* Basic styling for the profile page */
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/building1.jpg'); /* Add your background image path here */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }

        .header-container {
            background-color: rgba(0, 41, 171, 1.9); /* Slightly transparent background */
            color: white;
            padding: 5px; /* Reduced padding */
            text-align: center;
        }

        .header-container h1 {
            margin: 0;
            font-size: 1.8em; /* Reduced font size */
        }

        .header-container h2 {
            margin: 0;
            font-size: 1.2em; /* Reduced font size */
        }

        .header-container img {
            height: 40px; /* Reduced logo size */
        }

        .content {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for content */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            color: #0047ab;
        }

        .profile-info {
            margin-top: 20px;
            text-align: center;
        }

        .profile-info img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-bottom: 20px;
        }

        .profile-info label {
            display: block;
            margin: 15px 0 5px;
            color: #333;
        }

        .profile-info p {
            margin: 0;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .profile-info button {
            background-color: #0047ab;
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 30px;
            display: block;
        }

        .profile-info button:hover {
            background-color: #003080;
        }

        .profile-info a {
            color: #0047ab;
            text-decoration: none;
        }

        .profile-info a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="header-container">
        <img src="images/university-logo.png" alt="University Logo" class="logo"/>
        <h1>KL UNIVERSITY</h1>
        <h2>Admin Profile</h2>
    </div>
    <div class="content">
        <% 
            // Retrieve admin details from session
            String adminname = (String) session.getAttribute("adminname");
            String email = (String) session.getAttribute("email");
            String role = (String) session.getAttribute("role");

            if (adminname != null && email != null && role != null) {
        %>
        <div class="profile-info">
            <!-- Default profile image for the admin -->
            <img src="images/profile_img.jpg" alt="Admin Profile Picture" />
            
            <label for="adminname">Admin Username:</label>
            <p id="adminname"><%= adminname %></p>
            
            <label for="email">Email:</label>
            <p id="email"><%= email %></p>
            
            <label for="role">Role:</label>
            <p id="role"><%= role %></p>
            
            <!-- Add more profile information here if needed -->
            
            <button onclick="window.location.href='admin_dashboard.jsp'">Back to Dashboard</button>
        </div>
        <% 
            } else {
        %>
        <p>Admin is not logged in. Please <a href="admin_login.jsp">login</a>.</p>
        <% 
            }
        %>
    </div>
</body>
</html>
