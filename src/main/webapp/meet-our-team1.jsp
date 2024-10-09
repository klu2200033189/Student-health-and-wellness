<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meet Our Team - Mental Health</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        /* Sidebar styling */
        .mental-health-sidebar {
            width: 15%;
            min-height: 100vh;
            padding: 20px;
            background: rgba(0, 0, 0, 0.2);
            color: #fff;
            font-size: 1.1rem;
            line-height: 1.6;
            position: fixed;
            left: 0;
            top: 0;
        }

        /* Sidebar text styling */
        .mental-health-sidebar h2,
        .mental-health-sidebar p,
        .mental-health-sidebar ul {
            position: relative;
            z-index: 2;
        }

        .mental-health-sidebar h2 {
            color: #f07d00;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .mental-health-sidebar .description {
            margin-bottom: 20px;
            font-size: 1.1rem;
        }

        .mental-health-sidebar .contact-info {
            margin-top: 30px;
            font-size: 1.1rem;
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
            color: #fff;
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

        /* Team content styling */
        .team-content {
            margin-left: 15%;
            padding: 30px;
        }

        .team-content h2 {
            color: #f07d00;
            margin-bottom: 20px;
        }

        .team-members {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 15px;
            margin: 0;
        }

        .team-member {
            perspective: 2000px; /* Container for 3D flip effect */
            width: 300px; /* Set a fixed width for uniformity */
            height: 300px; /* Set a fixed height for uniformity */
        }

        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            transition: transform 0.1s;
            transform-style: preserve-3d;
        }

        .flip-card-inner.flipped {
            transform: rotateY(180deg);
        }

        .flip-card-front,
        .flip-card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            border-radius: 0; /* Ensures images remain square */
        }

        .flip-card-front {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: transparent;
        }

        .flip-card-back {
            transform: rotateY(180deg);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            background-color: #fff;
        }

        .team-member img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            cursor: pointer;
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
                width: 90%;
                float: none;
                min-height: auto;
                padding: 10px;
                font-size: 1rem;
            }

            .mental-health-sidebar h2 {
                font-size: 2rem;
            }

            .team-content {
                margin-left: 0;
                width: 100%;
                float: none;
                padding: 15px;
            }

            .team-members {
                grid-template-columns: 1fr;
            }

            .team-member {
                width: 250px;
                height: 250px;
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
                <li class="active"><a href="#meet-our-team1.jsp">Meet our Team</a></li>
            </ul>
            <p class="contact-info">
                For immediate assistance, call us at: <strong>434-243-5150</strong>
            </p>
        </div>
        <div class="team-content">
            <h2>Meet Our Team</h2>
            <div class="team-members">
                <!-- Team member: Nicole Ruzek -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/nicole.jpg" alt="Nicole Ruzek, PhD">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Chief Mental Health Officer</h3>
                                <p><strong>Nicole Ruzek, PhD</strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:nicole@example.com">nicole@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Team member: Prasanna Madasu -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/pandu.jpg" alt="Prasanna Madasu">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Clinical Care Manager</h3>
                                <p><strong>Prasanna Madasu</strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:prasannamadasu910@gmail.com">prasannamadasu910@gmail.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Team member: Shekhar -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/shekhar.jpg" alt="Shekhar, PhD">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Director Counseling and Psychological Services</h3>
                                <p><strong>Sarath, PhD</strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:shekhar@example.com">sarath@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Team member: Vasavi Madasu -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/vasavi.jpg" alt="Vasavi Madasu">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Mental Health Advisor</h3>
                                <p><strong>Vasavi Madasu</strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:vasavi@example.com">vasavi@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Team member: Veera -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/shabnam.jpg" alt="Veera">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Mental Health Counselor</h3>
                                <p><strong>Shabnam Aara</strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:aara@example.com">veera@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Team member: Raj -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/ram.jpg" alt="Raj">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Well-being Specialist</h3>
                                <p><strong>Sri Ram</strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:raj@example.com">sriram@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Team member: Sarath -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/Sarath.png" alt="Sarath">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Mental Health Coordinator</h3>
                                <p><strong>Shekhar</strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:sarath@example.com">Shekhar@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Team member: Raaga -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/kalyani.jpg" alt="Raaga">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Mental Health Consultant</h3>
                                <p><strong>Kalyani</strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:raaga@example.com">kalyani@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Team member: Anvesh -->
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/shivani.png" alt="Anvesh">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Therapist</h3>
                                <p><strong>Hema Garlapati </strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:hema@example.com">shivani@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="team-member">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/arsha.jpg" alt="Anvesh">
                        </div>
                        <div class="flip-card-back">
                            <div class="team-member-info">
                                <h3>Therapist</h3>
                                <p><strong>Arsha Shaik </strong></p>
                                <p>Contact: 434-243-5150</p>
                                <p>Email: <a href="mailto:arshashaik@example.com">shivani@example.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <!-- Footer code here -->
    </footer>
    <script>
        // Flip effect JavaScript
        document.querySelectorAll('.team-member img').forEach(item => {
            item.addEventListener('click', event => {
                const flipCardInner = event.currentTarget.closest('.flip-card-inner');
                flipCardInner.classList.toggle('flipped');

                // Automatically flip back after 3 seconds
                setTimeout(() => {
                    flipCardInner.classList.toggle('flipped');
                }, 3000);
            });
        });
    </script>
</body>
</html>
