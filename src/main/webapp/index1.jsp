<!DOCTYPE html>
<html>
<head>
    <title>Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        /* Dashboard dropdown styling */
        /* (existing CSS remains unchanged) */
        
        /* Additional styling for SHW Pharmacy section */
        .pharmacy-section {
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin: 20px 0;
        }

        .pharmacy-section h2 {
            color: #012D85;
        }

        .pharmacy-section p {
            line-height: 1.6;
        }

        .pharmacy-section ul {
            padding-left: 20px;
            margin-bottom: 20px;
            list-style-type: square;
        }

        .pharmacy-section ul li {
            margin-bottom: 10px;
        }

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
    <header>
        <div class="header-container">
            <div class="logo-container">
                <img src="images/university-logo.png" alt="University Logo" class="logo" />
                <h1>KL UNIVERSITY</h1>
            </div>
            <div class="heading-container">
                <h2>STUDENT HEALTH AND WELLNESS</h2>
            </div>
        </div>
        <nav>
            <ul>
                <li class="dashboard-dropdown">
                    <a href="#">Account</a>
                    <div class="dashboard-content">
                        <a href="profile.jsp">Profile</a>
                        <a href="appointments.jsp">Appointments</a>
                        <a href="help-center.jsp">Help Center</a> <!-- Link to Help Center page -->
                        <a href="LogoutServlet">Logout</a>
                    </div>
                </li>
                <li><a href="user_events1.jsp">Events</a></li>
                <li class="dashboard-dropdown">
                    <a href="#">Care and Support Services</a>
                    <div class="dashboard-content">
                        <a href="basic.jsp">Basic Needs and Resources</a>
                        <a href="support.jsp">Care and Support: FAQs</a>
                        <a href="meet-our-team1.jsp">Meet our Team</a>
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Mental Health</a>
                    <div class="dashboard-content">
                        <div class="nested-dropdown">
                            <a href="#">Our Services</a>
                            <div class="nested-dropdown-content">
                                <a href="caps-groups.jsp">CAPS Groups</a>
                                <a href="#">Care Manager</a>
                                <a href="#">Embedded Counselors</a>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <a href="#">Emergency Care</a>
                            <div class="nested-dropdown-content">
                                <a href="suicide-awareness.jsp">Suicide Awareness and Prevention</a>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <a href="#">Mental Health Resources</a>
                            <div class="nested-dropdown-content">
                                <a href="#">For Students</a>
                                <a href="#">For Faculty and Staff</a>
                            </div>
                        </div>
                        <a href="meet-our-team.jsp">Meet Our Team</a>
                        <a href="#">Mental Health FAQ's</a>
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Disability Services</a>
                    <div class="dashboard-content">
                        <!-- (existing links remain unchanged) -->
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Medical Services</a>
                    <div class="dashboard-content">
                        <a href="scheduling.jsp">Scheduling</a>
                        <a href="medicalservices.jsp">Medical Services Care Man</a>
                        <a href="SHWPharmacy.jsp">SHW Pharmacy</a> <!-- Ensure this links to the correct page -->
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Research</a>
                    <div class="dashboard-content">
                        <!-- (existing links remain unchanged) -->
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Well-Being</a>
                    <div class="dashboard-content">
                        <a href="well-being-coaching.jsp">Well-Being Coaching</a>
                        <div class="nested-dropdown">
                            <a href="#">Well-Being Guidelines</a>
                            <div class="nested-dropdown-content">
                                <a href="taking-care.jsp">Take Care of Yourself</a>
                                <a href="healthy-sleep.jsp">Healthy Sleep</a>
                                <a href="social-connectedness.jsp">Social Connectedness</a>
                                <a href="#">Finding Meaning and Purpose</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="banner">
            <img src="images/building.jpg" alt="Building Image" />
            <div class="overlay">
                <h2>SHW Operating Hours: Monday - Friday: 8am - 4:30pm</h2>
                <!-- Redirect to the schedule page -->
                <form action="sechedule.jsp"> <!-- Changed to 'sechedule.jsp' -->
                    <button type="submit">Schedule Online</button>
                </form>
                <button>After Hours & Emergencies</button>
                <button>Location & Hours</button>
            </div>
        </div>

        <!-- WELCOME Section -->
        <section class="welcome-section">
            <h3>WELCOME</h3>
            <p>
                Our goal is to help students reach their <strong>full potential</strong> by optimizing their
                <strong>health and well-being</strong> during their time at the University of Virginia and beyond.
                We work to accomplish this through excellent medical, mental health, accessibility and well-being services,
                public health education and leadership, and our nationally renowned research and institutional partnerships.
                Our services are available to all registered students who are charged the mandatory
            </p>
        </section>

        <!-- SHW Pharmacy Section -->
        <div class="pharmacy-section">
            <h2>SHW Pharmacy</h2>
            <p>
                The SHW Pharmacy offers a range of services to support the health and wellness of students at KL University. Our pharmacy is dedicated to providing quality medication management, health consultations, and patient education.
            </p>
            <p>
                <strong>Hours:</strong> Monday - Friday: 8am - 4:30pm
            </p>
            <p>
                For any questions, please reach out to our friendly staff or visit our location.
            </p>
            <button class="disclosure-button" onclick="toggleDisclosure()">Learn More</button>
            <div class="disclosure-content" id="disclosureContent">
                <p>Here are some of the services we provide:</p>
                <ul>
                    <li>Prescription medication dispensing</li>
                    <li>Medication therapy management</li>
                    <li>Health consultations</li>
                    <li>Over-the-counter medications</li>
                    <li>Patient education on medication use</li>
                </ul>
                <p>
                    We also accept various health insurances. For more information, please contact us directly.
                </p>
                <p>Location: Building XYZ, Room 123, KL University Campus</p>
            </div>
        </div>
    </main>
</body>
</html>
