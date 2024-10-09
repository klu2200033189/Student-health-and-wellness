<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Suicide Awareness and Prevention - Well-Being Guide</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
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
        <h2>Our Service</h2>
        <a href="caps-groups.jsp">CAPS Groups</a>
        <a href="#">Care Manager</a>
        <a href="#">Embedded Counselors</a>  
        <h2>Emergency Care</h2>
        <a href="suicide-awareness.jsp" style="color: #E87722;">Suicide Awareness and Prevention</a>
  
        <h2>Mental Health Resources</h2>
        <a href="#">For Students</a>
        <a href="#">For Faculty and Staff</a>   
                             
        <a href="meet-our-team.jsp">Meet Our Team</a>
        <a href="#">Mental Health FAQ's</a>
        <a href="index1.jsp">Home</a>
        
        
    </div>

    <div class="main-content">
        <h1>Suicide Awareness and Prevention</h1>
        
        <h2>If You Are Having Suicidal Thoughts</h2>
        <p>We strongly recommend you seek help immediately. Similarly, we are here for you if someone you know is experiencing thoughts of suicide. You are not alone in your struggles.</p>

        <h3>Immediate Support</h3>
        <ul>
            <li>Call the Suicide Helpline (available 24/7) at <strong>9152987821</strong> or <strong>9152987822</strong></li>
            <li>Contact a mental health professional via iCall (free and confidential) at <strong>9152987821</strong> or email <a href="mailto:icall@tiss.edu">icall@tiss.edu</a></li>
        </ul>

        <p>Anyone at any age can have suicidal thoughts. However, data indicates that people between the ages of 18 and 26 are particularly vulnerable. Within this age range, about one out of every 10 individuals have reported experiencing these thoughts in the past year.</p>

        <h2>Suicide Prevention Program</h2>
        <p>The suicide prevention program focuses on providing services to reduce the incidence of suicide and save lives. The program includes:</p>
        <ul>
            <li><strong>Primary Prevention:</strong> Community education for recognizing signs of suicidality, depression, and other mental health concerns.</li>
            <li><strong>Secondary Intervention:</strong> Clinical assessment and treatment for individuals at risk of suicide.</li>
            <li><strong>Tertiary Intervention:</strong> Treatment and case management for individuals at high risk, including those who have attempted suicide or have increased thoughts of suicide.</li>
        </ul>
        <p>For more information about these programs, you can contact the mental health helpline at <strong>9152987821</strong>.</p>

        <h2>How to Help a Peer</h2>
        <p>It is important to listen carefully, ask open-ended questions, offer a sense of hope, and help the person stay safe. You can ask direct questions like, "Are you thinking about ending your life?" If the answer is "yes," contact a mental health professional immediately.</p>

        <h2>Warning Signs and Resources</h2>
        <p>Recognize the warning signs of suicide and be aware of the myths and facts surrounding it.</p>

        <h2>Additional Resources</h2>
        <ul>
            <li>AASRA Suicide Prevention Helpline: <strong>91-9820466726</strong></li>
            <li>Snehi Helpline: <strong>91-22-2772 6771</strong> / <strong>91-22-2772 6773</strong></li>
            <li>Vandrevala Foundation Helpline: <strong>1860 2662 345</strong> or <strong>91 9999 666 555</strong></li>
            <li>Mental Health Support: <a href="https://www.helpguide.org">HelpGuide.org</a> (international resource)</li>
        </ul>
    </div>
</body>
</html>
