<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Help Center</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
            overflow: hidden; /* Disable scrolling on the body */
        }

        .main-content {
            width: 65%;
            max-width: 1200px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.85);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-left: 270px;
            max-height: 80vh; /* Set a fixed maximum height */
            overflow-y: auto; /* Allow scrolling within the content box if necessary */
        }

        .main-content h1 {
            color: #012D85;
        }

        .main-content p {
            line-height: 1.6;
        }

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
    </style>
</head>
<body>

    <div class="sidebar">
        <h2>Help Center</h2>
        <a href="index1.jsp">Home</a>
    </div>

    <div class="main-content">
        <h1>Help Center</h1>
        <p>Welcome to the Help Center. Here, you can find information to guide you through using our platform.</p>

        <h2>Frequently Asked Questions (FAQ)</h2>
        <p>Below are some commonly asked questions:</p>
        <ul>
            <li><strong>How do I schedule an appointment?</strong> You can schedule an appointment via Schedule online option in the student helath and wellness .you can schedule here <a href="sechedule.jsp"> sechedule here</a> </li>
            <li><strong>What services are available in the Student Health and Wellness platform?</strong> We offer a variety of services, including medical services, well-being coaching, and pharmacy services.</li>
            <li><strong>How do I contact support?</strong> If you need assistance, please call us at (434) 924-5362 or email us at support@healthplatform.com.</li>
        </ul>

        <h2>Contact Us</h2>
        <p>If you need further help, feel free to reach out to our support team:</p>
        <ul>
            <li><strong>Phone:</strong> (434) 924-5362</li>
            <li><strong>Email:</strong> <a href="mailto:support@healthplatform.com">support@healthplatform.com</a></li>
        </ul>

        <h2>Support</h2>
        <p>Our support team is available to assist with any issues or questions you may have. You can contact us through the phone or email provided above, or visit our office during working hours.</p>
    </div>

</body>
</html>
