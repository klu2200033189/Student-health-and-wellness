<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Medical Services</title>
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

        .main-content ul {
            padding-left: 20px;
            margin-bottom: 20px;
            list-style-type: square;
        }

        .main-content ul li {
            margin-bottom: 10px;
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
        <h1>Medical Services</h1>
        
        <section class="content-section">
            <div class="section-title">
                <h2>Care Manager in Medical Services</h2>
            </div>
            <p>
                The Care Manager in Medical Services provides anticipatory guidance, assistance with navigating the healthcare system, identifying and obtaining needed resources, coordinating complex healthcare needs, and ensuring needed follow-up care when acutely ill.
            </p>
            <p>
                Medical Care Managers can help students learn to be responsible for their own healthcare. That includes; becoming responsible for making & canceling their own appointments, navigating productive appointments, managing healthcare decisions, obtaining and taking medication, following through with professional advice, seeking follow-up care, understanding insurance coverage, and ensuring costs associated with care are paid. Students’ medical records are private, and Medical Care Managers will not be able to release any medical information without permission. Understanding this, it is important to have conversations about your health history and insurance coverage before coming to Grounds.
            </p>
            <button class="disclosure-button" onclick="toggleDisclosure()">Learn More</button>
            <div class="disclosure-content" id="disclosureContent">
                <p>Some examples include:</p>
                <ul>
                    <li>Planning for the transition to college</li>
                    <li>Coordinating complex care needs</li>
                    <li>Mastering chronic healthcare needs while balancing social and academic success</li>
                    <li>Arranging for specialized care while at UVA</li>
                    <li>Coordinating the sharing of key medical records</li>
                    <li>Identifying resources on & off Grounds</li>
                    <li>Addressing barriers to receiving care</li>
                </ul>
                <p>
                    Despite advanced planning, there may be a gap between needs and available resources. Sometimes there may be a lack of available appointments with local specialists, long waiting lists, or issues with insurance not providing coverage for care that has been recommended.
                </p>
                <p>
                    It can take months to get in to see a new specialist, so begin planning well in advance of arrival on Grounds. A Counseling & Psychological Services (CAPS) Care Manager can assist with locating local mental healthcare clinicians.
                </p>
                 
                <p>Ensuring follow-up care for students who seek care after hours.</p>
                <p>
                    Care Managers in both Medical and Counseling & Psychological Services (CAPS) are available to assist with identifying local resources and problem-solving issues related to your transition. 
                    Please refer to the CAPS Care Managers page for an overview of local mental health resources.
                </p>
            </div>
        </section>

    </div>
</body>
</html>
