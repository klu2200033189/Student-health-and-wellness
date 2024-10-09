<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SHW Pharmacy</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        /* General styling */
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

        /* Main content styling */
        .main-content {
            width: 65%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-left: 270px; /* To account for sidebar width */
        }

        .main-content h1, .main-content h2 {
            color: #012D85;
        }

        .main-content p {
            line-height: 1.6;
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

        .section-title {
            text-align: center;
            padding: 20px 0;
        }

        .section-title h2 {
            margin: 0;
            padding-bottom: 10px;
            border-bottom: 2px solid #333;
        }

        /* Button style */
        .disclosure-button {
            background-color: #E87722;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .disclosure-content {
            display: none;
            margin-top: 10px;
            padding: 10px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
    </style>
    <script>
        function toggleDisclosure() {
            const content = document.getElementById('disclosureContent');
            content.style.display = content.style.display === 'block' ? 'none' : 'block';
        }
    </script>
</head>
<body>

    <div class="sidebar">
        <h2>Medical Services</h2>
        <a href="scheduling.jsp">Scheduling</a>
        <a href="medicalservices.jsp">Medical Services Care Manager</a>
        <a href="SHWPharmacy.jsp">SHW Pharmacy</a>
        <a href="index1.jsp">Home</a>
    </div>

    <div class="main-content">
        <h1>SHW Pharmacy</h1>
        
        <section class="content-section">
            <div class="section-title">
                <h2>Welcome to the SHW Pharmacy</h2>
            </div>
            <p>
                The SHW Pharmacy offers a range of services to support your health needs, including prescription medications, over-the-counter products, and health consultations.
            </p>
            <p>
                Our pharmacy team is dedicated to providing high-quality care and ensuring that you understand your medications and health management options.
            </p>
            <button class="disclosure-button" onclick="toggleDisclosure()">Learn More About Our Services</button>
            <div class="disclosure-content" id="disclosureContent">
                <p>Our pharmacy services include:</p>
                <ul>
                    <li>Prescription refills and transfers</li>
                    <li>Medication consultations and reviews</li>
                    <li>Over-the-counter medication recommendations</li>
                    <li>Health screenings and immunizations</li>
                </ul>
                <p>
                    We accept a variety of insurance plans and offer competitive pricing for those without insurance. Please bring your insurance information when visiting the pharmacy.
                </p>
            </div>
        </section>

    </div>
</body>
</html>
