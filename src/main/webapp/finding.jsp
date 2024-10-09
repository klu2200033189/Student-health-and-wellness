<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Finding Meaning and Purpose - Well-Being Guide</title>
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
            font-size: 1.5rem;
            margin-top: 0;
        }

        .sidebar a {
            text-decoration: none;
            color: #012D85;
            display: block;
            padding: 8px;
            margin-bottom: 5px;
            font-size: 1.1rem;
        }

        .sidebar a:hover {
            background-color: #E87722;
            color: white;
        }

        /* Main content styling */
        .main-content {
            margin-left: 325px; /* Leave space for the sidebar */
            margin-right: 250px;
            width: calc(120% - 250px);
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            box-sizing: border-box;
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
        <a href="finding.jsp" style="color: #E87722;">Finding Meaning and Purpose</a>
        <a href="healthy-sleep.jsp">Healthy Sleep</a>
        <a href="social-connectedness.jsp">Social Connectedness</a>
        <a href="taking-care.jsp">Taking Care of Yourself</a>
        <a href="index1.jsp">Home</a>

    </div>

    <div class="main-content">
        <header>
            <h1>Finding Meaning and Purpose</h1>
        </header>
        <main>
            <section>
                <h2>Spiritual Well-Being</h2>
                <p>Spiritual well-being is the ability to establish meaning and find purpose in our lives through the fusion of art, nature, and/or a sense of connection beyond the self. It can benefit our overall well-being to cultivate both our sense of inner understanding and our sense of place. Spiritual well-being can help our mental health by getting to know ourselves and cultivating motivation, peace, and a sense of self-worth.</p>
            </section>
            
            <section>
                <h2>Student Resources</h2>
                <p>"Although it's different for everyone, my definition of spirituality encompasses feeling connected to other people and finding purpose in my daily life." - A.Z.</p>
            </section>
            
            <section>
                <h2>Focus on Your Inner Self</h2>
                <p>Introspection can greatly enhance well-being by helping you learn about yourself and resolving internal conflicts before engaging with others.</p>
                <ul>
                    <li>Take a walk. Whether in nature, a museum, or around your favorite building on campus, find a connection to yourself, someone, or something else. Try grounding techniques or meditate on a question or issue important in your life.</li>
                    <li>Set aside time for yourself. Take a few minutes each day or week to think, pray, or reflect on how you're feeling. What are you grateful for today? What went well? What have you done or can do for yourself today?</li>
                </ul>
            </section>
            
            <section>
                <h2>Join with Others in the Community</h2>
                <p>Personal connections can be a meaningful part of spirituality and can help you maintain a healthy sense of purpose and self-worth.</p>
                <ul>
                    <li>Look for a student organization. Joining fellow students in practicing religion or spirituality together can be a great way to maintain your practices.</li>
                    <li>Find support. Having someone to guide you or accompany you in your spiritual journey can make it less daunting and give you someone to turn to when you have questions.</li>
                </ul>
            </section>
            
            <section>
                <h2>Look at the Bigger Picture</h2>
                <p>Sometimes, it's important to view life as a big picture to focus on your goals, hone in on your direction, and understand that you are part of something bigger than just what's on your mind today.</p>
                <ul>
                    <li>Try the Thankfulness Challenge. Each evening, think of or write down three things that you are thankful for that played a role during your day.</li>
                    <li>Look for places to engage and give. Giving, whether in service or goods, can be incredibly beneficial to both the recipient and the giver.</li>
                </ul>
            </section>
        </main>
    </div>
</body>
</html>
