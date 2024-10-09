<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/building1.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        /* Header and Navigation styling */
        .header-container {
            background-color: #001a57;
            padding: 15px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: white;
        }

        .logo-container {
            display: flex;
            align-items: center;
            padding-left: 20px;
        }

        .logo {
            width: 50px;
            height: auto;
            margin-right: 10px;
        }

        .header-title {
            font-size: 24px;
            font-weight: bold;
        }

        .heading-container {
            padding-right: 20px;
            font-size: 18px;
            text-transform: uppercase;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: space-around;
            background-color: #f2f2f2;
        }

        nav ul li {
            margin: 0;
        }

        nav ul li a {
            display: block;
            color: #001a57;
            text-decoration: none;
            padding: 15px 30px;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #001a57;
            color: white;
        }

        /* Dashboard content styling */
        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.5);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            width: 150%;
            max-width: 1800px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .dashboard-welcome h2 {
            color: #001a57;
            font-size: 32px;
            margin-bottom: 10px;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: bold;
        }

        .dashboard-welcome p {
            color: #444;
            font-size: 18px;
            margin-bottom: 30px;
            letter-spacing: 0.5px;
        }

        .dashboard-options {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            margin-top: 40px;
        }

        .dashboard-option {
            background: linear-gradient(135deg, #001a57 0%, #004080 100%);
            color: white;
            padding: 40px;
            margin: 20px;
            border-radius: 12px;
            width: 220px;
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            position: relative;
            overflow: hidden;
        }

        .dashboard-option::before {
            content: '';
            position: absolute;
            top: -50px;
            left: -50px;
            width: 150%;
            height: 150%;
            background: rgba(255, 255, 255, 0.2);
            transform: rotate(45deg);
            transition: all 0.5s ease;
            z-index: 0;
        }

        .dashboard-option:hover::before {
            top: -20px;
            left: -20px;
        }

        .dashboard-option:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .dashboard-option a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            position: relative;
            z-index: 1;
        }

        /* New section styling */
        .new-section, .upcoming-section {
            background-color: #fff3cd;
            border: 1px solid #ffeeba;
            padding: 20px;
            border-radius: 10px;
            margin-top: 40px;
            text-align: left;
        }

        .new-section h3, .upcoming-section h3 {
            color: #856404;
            font-size: 24px;
        }

        .new-section p, .upcoming-section p {
            color: #856404;
            font-size: 16px;
        }

        /* Guidelines section */
        .guidelines-section {
            background-color: #e2e3e5;
            border: 1px solid #d6d8db;
            padding: 20px;
            border-radius: 10px;
            margin-top: 40px;
        }

        .guidelines-section h3 {
            color: #383d41;
            font-size: 24px;
        }

        .guidelines-section p {
            color: #383d41;
            font-size: 16px;
        }

        /* Sticky Button for Chatbot */
        .sticky-button {
            position: sticky;
            bottom: 0;
            width: 100%;
            background-color: #001a57;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.2);
            z-index: 999;
            transition: background-color 0.3s ease;
        }

        .sticky-button a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .sticky-button a:hover {
            text-decoration: underline;
        }

        .sticky-button:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-container">
            <div class="logo-container">
                <img src="images/university-logo.png" alt="University Logo" class="logo" />
                <div class="header-title">KL UNIVERSITY</div>
            </div>
            <div class="heading-container">ADMIN DASHBOARD</div>
        </div>
        <nav>
            <ul>
                <li><a href="admin_profile.jsp">Admin Profile</a></li>
                <li><a href="admin-view-users.jsp">View Users</a></li>
                <li><a href="admin-manage-events.jsp">Manage Events</a></li>
                <li><a href="mental-health.jsp">Reports</a></li>
                <li><a href="index.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="dashboard-container">
            <section class="dashboard-welcome">
                <h2>Welcome, Admin!</h2>
                <p>Manage the system efficiently with the tools below.</p>
            </section>

            <section class="dashboard-options">
                <div class="dashboard-option">
                    <a href="admin-view-users.jsp">View Users</a>
                </div>
                <div class="dashboard-option">
                    <a href="admin-manage-events.jsp">Manage Events</a>
                </div>
                <div class="dashboard-option">
                    <a href="admin-reports.jsp">View Reports</a>
                </div>
                <div class="dashboard-option">
                    <a href="admin-settings.jsp">System Settings</a>
                </div>
            </section>

            <!-- Expanded Important Announcements Section -->
            <section class="new-section">
                <h3>Important Announcements</h3>
                <p>
                    As part of our commitment to maintaining a seamless experience for students and staff,
                    please make sure the following tasks are up-to-date:
                </p>
                <ul>
                    <li>Review monthly reports to assess system performance and student engagement.</li>
                    <li>Ensure all scheduled events are listed in the system and properly managed.</li>
                    <li>Check for any unresolved technical issues or complaints raised by users.</li>
                    <li>Monitor the health and well-being services provided, ensuring they meet university standards.</li>
                </ul>
            </section>

            <!-- Guidelines for Admin -->
            <section class="guidelines-section">
                <h3>System Guidelines</h3>
                <p>
                    1. Ensure user data is protected following the latest privacy guidelines.<br>
                    2. Regularly update event and service information.<br>
                    3. Respond promptly to student inquiries and provide accurate health and wellness resources.<br>
                    4. Conduct routine system checks to avoid any downtime, and maintain optimal performance.<br>
                    5. Foster a supportive community through frequent engagement and feedback loops.
                </p>
            </section>

            <!-- Upcoming Events Section -->
            <section class="upcoming-section">
                <h3>Upcoming Events and Deadlines</h3>
                <p>Check the schedule regularly to keep track of new events and deadlines for reporting.</p>
            </section>
        </div>
    </main>

    <!-- Sticky Button -->
    <button class="sticky-button">
        <a href="chatbot-container.jsp">Questions? Ask UVaChat</a>
    </button>
</body>
</html>
