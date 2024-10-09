<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Scheduling</title>
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
            height: 160vh;
            color: #333;
        }

        .main-content {
            width: 65%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-left: 270px;
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
        <h2>Medical Services</h2>
        <a href="scheduling.jsp" style="color: #E87722;">Scheduling</a>
        <a href="medicalservices.jsp">Medical Services</a>
        <a href="pharmacy.jsp">SHW Pharmacy</a>
        <a href="index1.jsp">Home</a>
    </div>

    <div class="main-content">
        <h1>Scheduling an Appointment</h1>
        <p>Ready to schedule an appointment with Medical Services?</p>
        <p>You can schedule an appointment online through the <strong>HealthyHoos</strong> patient portal. Login using your Netbadge ID and then click the <em>"Appointments"</em> tab on the portal's navigation bar to get started.</p>
        <p>We hold same-day and next-day appointments for immediate need that can only be scheduled over the phone.</p>
        <p>If you don't see any available appointments within the next few business days and need to be seen, give us a call at <strong>(434) 924-5362</strong>.</p>
        <p>If you’re unsure of which appointment type to select on HealthyHoos, you can call at <strong>(434) 924-5362</strong> to discuss the medical care you are looking for and schedule the appropriate type of care appointment.</p>

        <h2>Important Information</h2>
        <p>Plan to arrive in the Medical Services lobby area at least 10 minutes before your scheduled appointment time. Please always bring your student identification card, insurance card, and prescription card (if separate) to your appointment!</p>

        <h2>Study Participation</h2>
        <p>Our clinic is participating in a study with the University of Pittsburgh on alcohol use and sexual health. Students with upcoming appointments in Medical Services are eligible to participate. If you are interested, <a href="user_events1.jsp">navigate here to learn more</a>. If you have questions for the study team, you can reach out to Elizabeth Walker at <a href="mailto:walkerea2@upmc.edu">walkerea2@upmc.edu</a>. Your SHW care provider will have no access to your study involvement or responses.</p>
    </div>
    
</body>
</html>
