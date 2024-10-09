<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meet Our Team - Mental Health</title>
    <link rel="stylesheet" href="css/style.css">
    
    <style>
        /* Styling for the team page */
        .mental-health-sidebar {
            float: left;
            width: 20%;
            min-height: 100vh;
            padding: 20px;
            background-color: rgba(247, 247, 247, 0.6); /* Semi-transparent background */
            font-size: 1.1rem;
            line-height: 1.6;
        }

        .mental-health-sidebar h2 {
            color: #f07d00;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .mental-health-sidebar .description {
            margin-bottom: 20px;
            font-size: 1.1rem;
            color: #666;
        }

        .mental-health-sidebar .contact-info {
            margin-top: 30px;
            font-size: 1.1rem;
            color: #333;
        }

        .mental-health-sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .mental-health-sidebar ul li {
            margin: 10px 0;
        }

        .mental-health-sidebar ul li a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            font-size: 1.1rem;
        }

        /* Highlight the current page link */
        .mental-health-sidebar ul li.active a {
            color: #ffffff;
            background-color: #f07d00;
            padding: 10px;
            border-radius: 5px;
        }

        .mental-health-sidebar ul li a:hover {
            color: #f07d00;
        }

        .team-content {
            float: right;
            width: 75%;
            padding: 30px;
            background-image: url('images/building.jpg'); /* Change the path as needed */
            background-size: cover;
            background-position: center;
        }

        .team-content h2 {
            color: #f07d00;
            margin-bottom: 20px;
        }

        .team-members {
            display: grid;
            grid-template-columns: repeat(2, 1fr); /* 2 columns */
            gap: 15px; /* Space between grid items */
            margin: 0;
        }

        .team-member {
            display: flex;
            flex-direction: column;
            align-items: center;
            border: 1px solid #e0e0e0;
            padding: 20px;
            border-radius: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent to make text readable */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            height: auto; /* Auto height for flexibility */
            width: 100%; /* Full width for smaller screens */
            max-width: 400px; /* Limit the width */
            margin: 0 auto; /* Center the items */
        }

        .team-member img {
            border-radius: 50%;
            width: 150px; /* Adjust width and height if needed */
            height: 150px;
            object-fit: cover; /* Ensure the image fits within the circle */
            margin-bottom: 15px;
        }

        .team-member-info {
            max-width: 90%;
        }

        .team-member-info h3 {
            color: #f07d00;
            margin-bottom: 10px;
        }

        .team-member-info p {
            margin: 5px 0;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .mental-health-sidebar {
                width: 100%;
                float: none;
                min-height: auto;
                padding: 10px;
                font-size: 1rem;
            }

            .mental-health-sidebar h2 {
                font-size: 2rem;
            }

            .team-content {
                width: 100%;
                float: none;
                padding: 15px;
            }

            .team-members {
                grid-template-columns: 1fr; /* Stack items vertically on small screens */
            }

            .team-member img {
                width: 120px; /* Adjust width and height for smaller screens */
                height: 120px;
            }
        }

        @media (max-width: 480px) {
            .mental-health-sidebar h2 {
                font-size: 1.5rem;
            }

            .mental-health-sidebar .description,
            .mental-health-sidebar .contact-info {
                font-size: 0.9rem;
            }

            .team-content h2 {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <!-- Header code here -->
    </header>
    <main>
        <div class="mental-health-sidebar">
            <h2>Mental Health</h2>
            <p class="description">
                We are dedicated to providing comprehensive mental health services to support your well-being. Our team is here to help with various concerns and provide resources for support.
            </p>
            <ul>
                <li><a href="#">Our Services</a></li>
                <li><a href="#">Emergency Care</a></li>
                <li><a href="#">Mental Health Resources</a></li>
                <li><a href="FAQ's.jsp">Mental Health FAQs</a></li>
                <li><a href="index1.jsp">Home</a></li>
                <li class="active"><a href="#meet-our-team.jsp">Meet our Team</a></li>
            </ul>
            <p class="contact-info">
                For immediate assistance, call us at: <strong>434-243-5150</strong>
            </p>
        </div>
        <div class="team-content">
            <h2>Meet Our Team</h2>
            <div class="team-members">
                <!-- Existing team members -->
                <div class="team-member">
                    <img src="images/nicole.jpg" alt="Nicole Ruzek, PhD">
                    <div class="team-member-info">
                        <h3>Chief Mental Health Officer</h3>
                        <p><strong>Nicole Ruzek, PhD</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:nicole@example.com">nicole@example.com</a></p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="images/pandu.jpg" alt="Prasanna Madasu">
                    <div class="team-member-info">
                        <h3>Clinical Care Manager</h3>
                        <p><strong>Prasanna Madasu</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:prasanna@example.com">prasanna@example.com</a></p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="images/Sarath.png" alt="Shekhar, PhD">
                    <div class="team-member-info">
                        <h3>Director Counseling and Psychological Services</h3>
                        <p><strong>Shekhar, PhD</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:shekhar@example.com">shekhar@example.com</a></p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="images/vasavi.jpg" alt="Vasavi Madasu">
                    <div class="team-member-info">
                        <h3>Embedded Psychotherapist at the School of Architecture</h3>
                        <p><strong>Vasavi Madasu</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:vasavi@example.com">vasavi@example.com</a></p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="images/shabnam.jpg" alt="Shabnam Aara, PhD">
                    <div class="team-member-info">
                        <h3>Senior Administrative Assistant</h3>
                        <p><strong>Shabnam Aara, PhD</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:shabnam@example.com">shabnam@example.com</a></p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="images/ram.jpg" alt="Sri Ram, PhD">
                    <div class="team-member-info">
                        <h3>Staff Psychotherapist</h3>
                        <p><strong>Sri Ram, PhD</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:sri@example.com">sri@example.com</a></p>
                    </div>
                </div>

                <div class="team-member">
                    <img src="images/kalyani.jpg" alt="Kalyani ,Doctorial Intern">
                    <div class="team-member-info">
                        <h3>Doctorial Intern</h3>
                        <p><strong>Kalyani,Doctorial Intern</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:kalyani@example.com">kalyani@example.com</a></p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="images/shekhar.jpg" alt="Sarath Kumar,Clinical Care Manager">
                    <div class="team-member-info">
                        <h3>Clinical Care Manager</h3>
                        <p><strong>Sarath Kumar,Clinical Care Manager</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:sarathkumar9@example.com">sarathkumar9@example.com</a></p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="images/arsha.jpg" alt="Arsha.Shaik,Mental Health Intern">
                    <div class="team-member-info">
                        <h3>Mental Health Intern</h3>
                        <p><strong>Arsha,Mental Health Intern</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:arshashaik250@gmail.com">arshashaik250@gmail.com</a></p>
                    </div>
                </div>
                <div class="team-member">
                    <img src="images/Shivani.jpg" alt="Shivani Gowde,Community Therapist">
                    <div class="team-member-info">
                        <h3>Community Therapist</h3>
                        <p><strong>Hema Garlapati,Community Therapist</strong></p>
                        <p>Contact: 434-243-5150</p>
                        <p>Email: <a href="mailto:shivanigowde@example.com">hema@example.com</a></p>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <!-- Footer code here -->
    </footer>
</body>
</html>
