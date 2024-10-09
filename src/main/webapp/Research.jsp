<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SHORE Research Team - India</title>
    <link rel="stylesheet" href="styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building.jpg') no-repeat center center fixed; /* Replace with your background image path */
            background-size: cover;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            display: flex;
            margin: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            overflow: hidden;
        }

        .sidebar {
            width: 250px;
            background-color: rgba(244, 244, 244, 0.7);
            padding: 15px;
            position: fixed;
            height: 100%;
            left: 0;
            top: 0;
            border-right: 1px solid #ddd;
        }

        .sidebar h2 {
            font-size: 18px;
            margin-bottom: 15px;
            color: #E87722;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            margin-bottom: 10px;
        }

        .sidebar ul li a {
            text-decoration: none;
            color: #012D85;
            display: block;
            padding: 8px;
            margin-bottom: 5px;
        }

        .sidebar ul li a:hover {
            background-color: #E87722;
            color: white;
        }

        .content {
            width: 80%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-left: 270px; /* Adjusting for sidebar */
        }

        .content h1, .content h2 {
            font-size: 24px;
            margin-bottom: 15px;
            color: #012D85;
        }

        .content p, .content ul {
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 15px;
        }

        .toggle-list {
            list-style: none;
            padding: 0;
        }

        .toggle-list li {
            margin-bottom: 10px;
        }

        .toggle-btn {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            width: 100%;
            text-align: left;
            border-radius: 5px;
            font-size: 16px;
        }

        .toggle-btn:hover {
            background-color: #0056b3;
        }

        .toggle-content {
            display: none;
            padding: 10px;
            background-color: #f1f1f1;
            margin-top: 5px;
            border-radius: 5px;
        }

        /* FAQ specific styling */
        .faq-intro {
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .faq-item {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }

        .faq-question {
            cursor: pointer;
            font-weight: bold;
            color: #012D85;
            position: relative;
            padding-right: 20px;
        }

        .faq-answer {
            display: none;
            padding: 10px 0;
        }

        .faq-question::after {
            content: '\25BC';
            position: absolute;
            right: 0;
            font-size: 14px;
            transition: transform 0.3s ease;
        }

        .faq-question.active::after {
            transform: rotate(180deg);
        }

        /* Link styling */
        a {
            text-decoration: none;
            color: #012D85;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Research</h2>
        <ul>
            <li><a href="studies.jsp">Studies, Projects, and Publications</a></li>
            <li><a href="FAQ's.jsp">Clinical Trials: FAQs</a></li>
            <a href="Research.jsp" style="color: #E87722;">Research Team</a>
            <a href="index1.jsp">Home</a>
            

        </ul>
    </div>
    <div class="content">
        <h1>Research Team</h1>
        <p>
            The <strong>Student Health Office of Research Excellence (SHORE)</strong> in India is dedicated to advancing scientific research focused on the student population with the aim of enhancing student health and well-being. The SHORE team is committed to enrolling student research participants who accurately represent the diverse student communities across India. We ensure that all research activities are conducted with the highest level of respect for each participant and in full compliance with local regulations and ethical guidelines.
        </p>
        <p>
            Our research covers various domains including mental health, physical health, academic performance, and social well-being. We actively collaborate with educational institutions, healthcare providers, and policymakers to drive evidence-based improvements in student health.
        </p>
        <p>
            For additional information or if you have any questions, please contact Rebecca Ferrara, BS, MS, at <a href="mailto:rebecca.ferrara@example.com">rebecca.ferrara@example.com</a>.
        </p>
        <h2>Research Team</h2>
        <ul class="toggle-list">
            <li>
                <button class="toggle-btn">Dr. Christopher Holstege, MD, Senior Associate Vice President, Student Health and Wellness</button>
                <div class="toggle-content">
                    Dr. Holstege oversees the strategic direction of student health initiatives, ensuring that research aligns with the broader goals of student well-being. He has extensive experience in public health and student wellness programs.
                </div>
            </li>
            <li>
                <button class="toggle-btn">Dr. Meredith E. Hayden, MD, Associate Executive Director</button>
                <div class="toggle-content">
                    Dr. Hayden provides leadership in implementing health research programs and ensures effective collaboration between various stakeholders. Her expertise lies in clinical research and program management.
                </div>
            </li>
            <li>
                <button class="toggle-btn">Dr. Rita Farah, PharmD, MPH, PhD, Epidemiologist</button>
                <div class="toggle-content">
                    Dr. Farah specializes in epidemiological research and is responsible for designing and analyzing studies that address public health concerns among the student population. Her work focuses on preventive measures and health promotion strategies.
                </div>
            </li>
            <li>
                <button class="toggle-btn">Rebecca Ferrara, BS, MS, Public Health Data Specialist</button>
                <div class="toggle-content">
                    Ms. Ferrara manages data collection and analysis, ensuring the integrity and reliability of research data. Her role involves developing data management protocols and conducting statistical analysis to support research findings.
                </div>
            </li>
        </ul>
        <h2>Other Members</h2>
        <ul>
            <li>Danielle D'Andrea, Associate Director of Marketing and Communications</li>
            <li>Margaret Phillips, Director of Administration</li>
            <li>Jennifer Slaughter, Special Advisor to the Executive Director</li>
        </ul>
        <h2>Collaborations</h2>
        <p>
            SHORE collaborates with various national and international research institutions, universities, and non-profit organizations to enhance the scope and impact of its research initiatives. Our partners include:
        </p>
        <ul>
            <li><a href="#">University of Delhi</a></li>
            <li><a href="#">Indian Institute of Technology (IIT) Bombay</a></li>
            <li><a href="#">All India Institute of Medical Sciences (AIIMS)</a></li>
            <li><a href="#">World Health Organization (WHO)</a></li>
        </ul>
        <h2>Resources</h2>
        <p>
            For those interested in student health research, we offer a range of resources including access to research publications, data sets, and research toolkits. Visit our <a href="resources.jsp">Resources</a> page for more information.
        </p>
    </div>
    <script src="script.js"></script>
</body>
</html>
