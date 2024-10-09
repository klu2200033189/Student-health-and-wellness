<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Social Connectedness - Well-Being Guide</title>
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
            width: 65%;
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
            line-height: 2.1;
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
        <a href="social-connectedness.jsp" style="color: #E87722;">Social Connectedness</a>
        <a href="taking-care.jsp">Taking Care of Yourself</a>
        <a href="index1.jsp">Home</a>
        
    </div>

    <div class="main-content">
        <h1>Social Connectedness</h1>
        <p>Social well-being refers to the relationships we have and how we interact with others. It encompasses our ability to communicate effectively, develop meaningful relationships, and maintain a support network that helps us overcome challenges. Socially connected people and communities tend to be happier, healthier, and more resilient.</p>

        <h2>Student Resources</h2>
        <p><strong>"Social well-being is making sure you spend some time every day talking to others who uplift you and care about you. I try to call/text/spend time with someone close to me every day to keep my connections to others strong and healthy. Also, I invest my energy in relationships that make me feel good, grounded, and help me grow as a person." - C.A., Class of 2022</strong></p>
        <p><strong>"Social well-being is the ability to be emotionally vulnerable and be honest with someone to ensure that you have the energy and motivation to keep going." - S.K., Class of 2023</strong></p>

        <h2>Socializing</h2>
        <p>As social beings, we thrive on interactions with others. Research shows that socializing in a healthy way has tremendous health benefits, including improved physical and mental health.</p>
        <ul>
            <li><strong>Move Beyond Pleasantries:</strong> Ask people about their interests, goals, and experiences to deepen your connections. Questions like, "What do you care about?" or "What do you want out of your college experience?" can foster meaningful conversations.</li>
            <li><strong>Your Free Time is Yours:</strong> Engage in activities with friends that you enjoy, such as social distancing picnics, walks, tennis, or sharing a favorite movie or article. Consider starting a "book club" or discussion group to explore shared interests.</li>
            <li><strong>Quality Over Quantity:</strong> Use opportunities to build deeper relationships with friends rather than focusing on expanding your social circle. Cultivating close connections can be more fulfilling and supportive.</li>
        </ul>

        <h2>Social Support</h2>
        <p>Social support enhances quality of life and provides a buffer against adverse life events. Having friends, family, and mentors to turn to in times of need is essential for emotional resilience.</p>
        <ul>
            <li><strong>Have Reminders of Home:</strong> Keep a box of keepsakes, write letters to yourself, or use social media to stay connected with loved ones, even from a distance.</li>
            <li><strong>Find a Mentor:</strong> Seek out someone who can offer advice and support based on shared experiences. This could be a friend, professor, club leader, family member, or alum.</li>
        </ul>

        <h2>Create a Sense of Belonging</h2>
        <p>Creating a sense of belonging takes active effort and practice. Rather than focusing on the ways you differ from those around you, look for commonalities and celebrate your unique differences.</p>
        <ul>
            <li><strong>Remind Yourself That You Belong Here:</strong> Remember that you came to UVA for a reason. Someone saw qualities in you, whether passion, drive, or intellect. Embrace this place as your home.</li>
            <li><strong>Be Open to Peer Mentoring:</strong> Reach out to RAs, OLs, TSPAs, and other peer mentors. Engaging in discussions with them can provide valuable insights and support.</li>
            <li><strong>Introduce Yourself to Your Professors:</strong> Make an effort to connect with your professors during office hours and beyond. Building relationships with faculty can enrich your academic experience.</li>
        </ul>
    </div>
</body>
</html>
