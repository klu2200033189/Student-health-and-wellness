<!DOCTYPE html>
<html>
<head>
    <title>Basic Needs and Resources</title>
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
            justify-content:center;
            align-items:center;
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
            overflow-y: auto; /* Ensure scroll if content is long */
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
        .content-section {
            max-width : 2000px;
            width: 80%;
            margin-left: 270px; /* Adjusting for sidebar width */
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: calc(100% - 270px); /* Adjust width based on sidebar */
            overflow-y: auto; /* Ensure scroll if content is long */
        }

        .content-section h1, .content-section h2, .content-section h3 {
            color: #012D85;
        }

        .content-section p {
            line-height: 1.6;
        }

        .content-section ul {
            padding-left: 20px;
            margin-bottom: 20px;
            list-style-type: square;
        }

        .content-section ul li {
            margin-bottom: 10px;
        }

        /* Footer styling */
        footer {
            text-align: center;
            padding: 10px;
            background-color:#003366;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Navigation</h2>
        <ul>
            <li><a href="support.jsp" >Care and Support: FAQs</a></li>
            <li><a href="basic.jsp" style="color: #E87722;">Basic Needs and Resources</a></li>
            <li><a href="meet-our-team1.jsp">Meet Our Team</a></li>
            <li><a href="index1.jsp">Home</a></li>
            
        </ul>
    </div>

    <div class="content-section">
        <h1>Basic Needs and Resources</h1>
        
        <h2>SHW Operating Hours</h2>
        <p>Monday - Friday: 8am-4:30pm</p>

        <h3>Addressing Basic Needs at UVA</h3>
        <p>When students are struggling with food insecurity, or other essential needs, their ability to focus on academics and thrive socially can be impacted. By providing emergency resources and support, we create a safety net that allows students to overcome immediate challenges and build a stronger foundation for their academic journey. Our commitment to meeting basic needs reflects UVA's dedication to fostering a holistic and inclusive community where all students have the opportunity to reach their full potential.</p>

        <h3>Emergency Funding: Hoo Needs Help</h3>
        <p>Hoo Needs Help exists to support students who need assistance with unexpected, unforeseen, and unavoidable emergency expenses. These may be expenses related to situations such as accidents, illness, theft, fire damage, food insecurity, or temporary housing needs. Hoo Needs Help is a centralized entry point for all UVA students to apply for emergency financial support. Emergency support may be provided in the form of grants or short-term loans. Please note: This fund is NOT a scholarship and is intended to be an emergency resource for basic needs when other options have been exhausted. If you are in need of funds immediately, you can access a short-term emergency loan through Student Financial Services.</p>

        <h3>Eligibility</h3>
        <p>All degree-seeking, enrolled students, graduate and undergraduate, are eligible to apply, regardless of documentation or academic status.</p>

        <h3>Additional and Alternative UVA Resources</h3>
        <ul class="resource-list">
            <li>Short Term Emergency Loans</li>
            <li>GradBridge Loan</li>
            <li>Peer Financial Counseling</li>
        </ul>

        <h3>Food Insecurity Resources</h3>
        <p>Food insecurity is the limited or uncertain availability of nutritionally adequate and safe food. While marked by physical sensations of hunger in its most extreme form, more often it looks like: Deciding which meal during the day you can afford to eat; A diet primarily consisting of cheaper processed foods like instant noodles; Not getting enough fruit or vegetables due to the higher cost of fresh produce; Cutting or stretching the size of meals to make multiple meals out of one meal due to financial constraints.</p>

        <h3>UVA Resources</h3>
        <ul class="resource-list">
            <li>UVA Community Food Pantry</li>
            <li>Satellite Pantry Network</li>
            <li>Student Health and Wellness Nutrition Services</li>
        </ul>

        <h3>Housing Resources</h3>
        <p>Housing insecurity can impact a student's academic and emotional well-being. Pressure to find safe and affordable housing can lead to anxiety, depression, and difficulty concentrating. Students experiencing housing insecurity may also face challenges with transportation, access to meals, and consistent internet connectivity, all of which can hinder academic performance. Moreover, the lack of a stable living environment can disrupt sleep patterns, leading to fatigue and decreased cognitive function. These factors can create a substantial barrier to academic success and overall well-being.</p>
    </div>

    <footer>
        <p>Questions? Ask UVaChat</p>
    </footer>
</body>
</html>
