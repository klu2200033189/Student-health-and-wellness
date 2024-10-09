<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Taking Care of Yourself - Well-Being Guide</title>
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
        <h2>Well-Being</h2>
        <a href="well-being-coaching.jsp">Well-Being Coaching</a>
        <h2>Well-Being Guides</h2>
        <a href="finding.jsp">Finding Meaning and Purpose</a>
        <a href="healthy-sleep.jsp">Healthy Sleep</a>
        <a href="social-connectedness.jsp">Social Connectedness</a>
        <a href="taking-care.jsp" style="color: #E87722;">Taking Care of Yourself</a>
        <a href="index1.jsp">Home</a>

    </div>

    <div class="main-content">
        <h1>Taking Care of Yourself</h1>
        
        <h2>Emotional Well-Being</h2>
        <p>Emotional well-being is a person’s ability to accept and manage feelings through challenge and change. To develop emotional well-being, we need to build emotional skills—including positive thinking, emotional regulation, and mindfulness.</p>
        
        <h2>Student Resources</h2>
        <p><strong>"Taking care of myself means making sure that what I’m doing is healthy and enjoyable. This includes a lot of taking adequate alone time to recharge but also socializing when I want to, as well as establishing boundaries. Paying attention to what I feel when I am doing certain things and being aware of whether those interactions are negative or positive for me is crucial for my well-being." - L.F., Class of 2022</strong></p>

        <h2>Self-Care</h2>
        <p>Self-care involves any activity we do deliberately to take care of our mental, emotional, and physical health. It includes practices like eating right, reducing stress, exercising regularly, and taking time out when needed to stay healthy, happy, and resilient.</p>
        <ul>
            <li><strong>Check in with Yourself:</strong> Find time to reflect mentally and physically between classes, journal, or meditate. Practice mindfulness in daily activities like walking, eating, or even washing laundry.</li>
            <li><strong>Create a Sleep Hygiene Routine:</strong> Adopt a consistent bedtime, maintain a comfortable sleeping environment, and manage your pre-bedtime activities. See our Healthy Sleep Guide for more details.</li>
            <li><strong>Healthy Phone Habits/Hygiene:</strong> Develop healthier phone habits by leaving your phone in another room during meals and work, incorporating non-digital activities into your routine, and turning your phone on grayscale. Refer to our Virtual Well-Being Guide for more tips.</li>
        </ul>

        <h2>Develop a Growth Mindset</h2>
        <p>Your mindset greatly impacts your ability to empower yourself towards success, reduce stress, and build better connections with others.</p>
        <ul>
            <li><strong>Practice Makes Better:</strong> Start with gratitude by spending 5 minutes each day reflecting on what you're grateful for.</li>
            <li><strong>Learn from Mistakes and Failures:</strong> Practice self-compassion, find lessons in your experiences, and move forward with the knowledge that you will do better next time.</li>
            <li><strong>Give Yourself a Break:</strong> Taking short breaks can enhance productivity and overall well-being. You’ll be surprised how much better you work after a few minutes of relaxation.</li>
        </ul>

        <h2>Sense of Meaning and Purpose</h2>
        <p>Cultivating a sense of meaning and purpose motivates you towards a fulfilling future. It helps you get the most from your activities and achievements, both big and small.</p>
        <ul>
            <li><strong>Reflect on Academics:</strong> Consider if your academic path aligns with your values and goals. Ask yourself why this path is important to you.</li>
            <li><strong>Reflect on Your Involvements:</strong> Choose activities and organizations that ignite your passion rather than just looking good on a resume. Make the most of your time by engaging in what truly matters to you.</li>
        </ul>
    </div>
</body>
</html>
