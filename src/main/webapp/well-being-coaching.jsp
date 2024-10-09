<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Well-Being Coaching - Well-Being Guide</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
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
            width: 70%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-left: 270px; /* Adjusting for sidebar */
        }

        .main-content h1, .main-content h2, .main-content h3, .main-content h4 {
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
        <h2>Well-Being</h2>
        <a href="well-being-coaching.jsp" style="color: #E87722;">Well-Being Coaching</a>
        <h2>Well-Being Guides</h2>
        <a href="finding.jsp">Finding Meaning and Purpose</a>
        <a href="healthy-sleep.jsp">Healthy Sleep</a>
        <a href="social-connectedness.jsp">Social Connectedness</a>
        <a href="taking-care.jsp">Taking Care of Yourself</a>
        <a href="index1.jsp">Home</a>

    </div>

    <div class="main-content">
        <h1>Empowering You to Enhance Your Well-Being</h1>
        <h2>Well-Being Coaching</h2>
        <p>Well-Being Coaching offers a comprehensive approach to supporting students through the multifaceted experiences of college life. Our coaching services are specifically designed to address the unique challenges that students face, whether they are academic, personal, social, or emotional.</p>

        <h3>Personalized Support and Strategies</h3>
        <p>At the heart of our well-being coaching is a commitment to understanding each student as an individual. We begin the process with a comprehensive well-being survey that assesses various aspects of the student’s life, including stress levels, academic pressures, social connections, and emotional well-being. This survey is the foundation upon which we build our coaching relationship, allowing us to tailor each session to the student's specific needs and circumstances.</p>

        <h3>One-on-One Confidential Meetings</h3>
        <p>Students engage in confidential, one-on-one meetings with a dedicated well-being coach who is trained to provide empathetic, non-judgmental support. These sessions create a safe space for students to express their concerns, explore their feelings, and identify the obstacles they face. Coaches work collaboratively with students to develop personalized strategies that align with their goals, whether it’s improving time management skills, enhancing study habits, coping with stress and anxiety, or building stronger social connections.</p>

        <h3>Encouragement and Validation</h3>
        <p>Our coaching approach is grounded in encouragement and validation. We recognize the strengths and potential within each student and help them harness these qualities to foster both personal and academic growth. By acknowledging their efforts and celebrating their successes, we motivate students to take proactive steps toward achieving their goals. This positive reinforcement helps build confidence and resilience, empowering students to navigate the ups and downs of college life with greater ease.</p>

        <h3>Well-Being Coaching Process</h3>
        <p>Well-Being Coaching is more than just addressing immediate concerns; it’s about fostering holistic growth and development. We guide students in setting meaningful, achievable goals and support them in creating actionable plans to reach those milestones. Our coaches help students develop essential life skills, such as effective communication, emotional regulation, and self-advocacy, which are crucial for long-term success both in and out of the classroom.</p>

        <h3>A Balanced and Successful College Experience</h3>
        <p>Ultimately, our goal is to help students achieve a balanced and fulfilling college experience. By addressing the diverse challenges that students face and providing tailored support, WahooWell’s Well-Being Coaching empowers students to thrive academically, socially, and personally.</p>

        <h3>Get Started</h3>
        <p>The process of making an appointment with WahooWell begins with a simple yet important step: completing the sign-up survey. This survey is designed to gather essential information about your current well-being, lifestyle, challenges, and goals. By taking a few moments to thoughtfully answer these questions, you provide our facilitators with a comprehensive understanding of your unique needs and circumstances. This initial assessment is crucial for tailoring our coaching services to fit you perfectly.</p>

        <h4>Step-by-Step Guide to Signing Up</h4>
        <ul>
            <li><strong>Complete the Sign-Up Survey:</strong> When you decide to take the first step towards enhancing your well-being, you will be prompted to fill out our sign-up survey. The survey covers various aspects of your life.</li>
            <li><strong>Receive Personalized Recommendations:</strong> After completing the survey, your responses are reviewed by our team of well-being coaches. They analyze your needs and craft personalized recommendations to ensure that each session is highly relevant to your individual situation.</li>
            <li><strong>Schedule Your First Appointment via HealthyHoos:</strong> Once your survey is submitted and reviewed, you will be directed to HealthyHoos, our online scheduling platform. Here, you can select a convenient time for your first one-on-one session with a well-being coach.</li>
        </ul>

       
    </div>
</body>
</html>
