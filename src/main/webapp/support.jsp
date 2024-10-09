<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Care and Support: FAQs</title>
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
        .content-section {
            width: 80%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-left: 270px; /* Adjusting for sidebar */
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

        .faq-item {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }

        .faq-question {
            cursor: pointer;
            font-weight: bold;
            color: #012D85;
            position: relative;
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

        /* Footer styling */
        footer {
            text-align: center;
            padding: 10px;
            background-color: 004080; /* Changed footer color to blue */
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
    <script>
        function toggleAnswer(event) {
            const answer = event.currentTarget.nextElementSibling;
            const allAnswers = document.querySelectorAll('.faq-answer');
            const allQuestions = document.querySelectorAll('.faq-question');

            allAnswers.forEach(ans => ans.style.display = 'none');
            allQuestions.forEach(q => q.classList.remove('active'));

            if (answer.style.display === 'none') {
                answer.style.display = 'block';
                event.currentTarget.classList.add('active');
            } else {
                answer.style.display = 'none';
            }
        }
    </script>
</head>
<body>
    <div class="sidebar">
        <h2>Navigation</h2>
        <ul>
            <li><a href="support.jsp" style="color: #E87722;">Care and Support: FAQs</a></li>
            <li><a href="basic.jsp">Basic Needs and Resources</a></li>
            <li><a href="meet-our-team1.jsp">Meet Our Team</a></li>
            <li><a href="index1.jsp">Home</a></li>
        </ul>
    </div>

    <div class="content-section">
        <div class="faq-intro">
            <p>Check out our list of frequently asked questions below. If your question is still unanswered, please reach out to our office at 434-924-7133, or just stop by our office on the second floor of Peabody Hall.</p>
        </div>
        <!-- FAQ items -->
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">I am a family member/faculty/staff/friend/etc. and I have concerns for a student here at KLU. What should I do?</div>
            <div class="faq-answer">If the concerns are immediate safety concerns, please dial 911. For non-emergency concerns, please call KLU Care and Support Services at [insert phone number]. Or, email us at <a href="mailto:KLU_CARE@kluniversity.in">KLU_CARE@kluniversity.in</a>.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Do I need an appointment to visit Care and Support Services at KLU?</div>
            <div class="faq-answer">No! While appointments are appreciated, walk-ins are welcome!</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">What does Care and Support Services at KLU do?</div>
            <div class="faq-answer">KLU Care and Support Services provides inclusive support for all students with unmet needs to help them identify, reduce, and navigate barriers to their growth and well-being.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Is Care and Support Services at KLU the Dean of Students Office?</div>
            <div class="faq-answer">No, KLU Care and Support Services operates separately from the Dean of Students Office to better meet student needs.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Does Care and Support Services at KLU handle academic advising?</div>
            <div class="faq-answer">No. We help navigate barriers, but academic concerns should be directed to the appropriate academic dean.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">I have to be absent from class for a couple of days. What do I do?</div>
            <div class="faq-answer">Contact your academic support office to engage in support around academic flexibility.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">I am having a roommate conflict or want to switch dorms. What do I do?</div>
            <div class="faq-answer">Contact KLU Housing and Residence Life at <a href="mailto:housing@kluniversity.in">housing@kluniversity.in</a> for assistance.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Can you make my student contact me?</div>
            <div class="faq-answer">We can encourage your student to contact you, but we cannot force them to do so.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">My student has mental health concerns. What can I do?</div>
            <div class="faq-answer">Please contact us at [insert phone number] or <a href="mailto:klu_care@kluniversity.in">klu_care@kluniversity.in</a> for assistance. You can also reach out to KLU’s counseling services for further resources.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Can Care and Support Services assist with legal issues?</div>
            <div class="faq-answer">While we cannot provide legal advice, we can connect you with resources or referrals to legal aid services available to students.</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">How can I get involved in supporting Care and Support Services at KLU?</div>
            <div class="faq-answer">You can get involved by volunteering, participating in fundraising events, or providing feedback on how we can better serve students. Contact us to learn more about opportunities.</div>
        </div>
    </div>

    <footer>
    <li><a href="chatbot-container.jsp" style="color: white;">Questions? ASK UVACHAT</a></li>
    </footer>

</body>
</html>
