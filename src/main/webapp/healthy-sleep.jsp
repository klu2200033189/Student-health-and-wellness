<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Help Center - Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/help-center-bg.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Sidebar styling */
        .sidebar {
            width: 250px;
            background-color: rgba(244, 244, 244, 0.7);
            padding: 15px;
            position: fixed;
            height: 100%;
            left: 0;
            top: 0;
        }

        .sidebar h2 {
            color: #E87722;
        }

        .sidebar a {
            text-decoration: none;
            color: #012D85;
            display: block;
            padding: 8px;
            margin-bottom: 5px;
        }

        .sidebar a:hover {
            background-color: #E87722;
            color: white;
        }

        /* Main content styling */
        .main-content {
            width: 60%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .main-content h1, .main-content h2 {
            color: #012D85;
        }

        .main-content p {
            line-height: 1.6;
        }

        .main-content ul {
            padding-left: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Help Center</h2>
        <a href="help-center.jsp" style="color: #E87722;">Help Center</a>
        <a href="well-being-coaching.jsp">Well-Being Coaching</a>
        <a href="index1.jsp">Home</a>
    </div>

    <div class="main-content">
        <h1>Help Center</h1>
        <p>Welcome to the Help Center of the Student Health and Wellness platform. Here you will find answers to common questions, helpful resources, and ways to contact us for additional support.</p>

        <h2>Common Questions</h2>
        <ul>
            <li><strong>How do I schedule an appointment?</strong> You can schedule an appointment through the HealthyHoos patient portal. If you need immediate assistance, please contact us directly via the phone number provided.</li>
            <li><strong>What services are available?</strong> We offer a wide range of services including medical consultations, mental health support, and pharmacy services. Visit our services page for more details.</li>
            <li><strong>How do I access my health records?</strong> Your health records are securely stored and can be accessed through the patient portal. If you have trouble accessing your records, contact our support team for assistance.</li>
        </ul>

        <h2>Contact Us</h2>
        <p>If you have any further questions or need additional help, please reach out to us through one of the following methods:</p>
        <ul>
            <li><strong>Email:</strong> support@studenthealth.edu</li>
            <li><strong>Phone:</strong> +1 (123) 456-7890</li>
            <li><strong>Address:</strong> Student Health and Wellness Center, KL University</li>
        </ul>

        <h2>Feedback</h2>
        <p>We value your feedback. Please let us know how we can improve our services by filling out the feedback form available in your portal.</p>
    </div>
</body>
</html>
