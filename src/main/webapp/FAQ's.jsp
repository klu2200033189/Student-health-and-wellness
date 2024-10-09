<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Clinical Trials: FAQs</title>
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
        .faq-section {
            width: 80%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-left: 270px; /* Adjusting for sidebar */
        }

        .faq-section h1, .faq-section h2 {
            color: #012D85;
        }

        .faq-section p {
            line-height: 1.6;
        }

        .faq-section ul {
            padding-left: 20px;
            margin-bottom: 20px;
            list-style-type: square;
        }

        .faq-section ul li {
            margin-bottom: 10px;
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
            <li><a href="studies.jsp">Studies, Projects, and Publications</a></li>
            <a href="FAQ's.jsp" style="color: #E87722;">Clinical Trial: FAQ's</a>
            <li><a href="Research.jsp">Research Team</a></li>
            <li><a href="index1.jsp">Home</a></li>

        </ul>
    </div>

    <div class="faq-section">
        <div class="faq-intro">
            <p>Your decision to participate in a clinical trial involves many factors, including transportation, academic and/or job responsibilities, personal responsibilities, and family support. Remember, you are free to change your mind and drop out of the trial at any time. Please note, most trials require or strongly encourage a safety evaluation (exam and blood test) before you permanently withdraw.</p>
            <p>If you have any additional questions that are not answered below, please don't hesitate to reach out to Karen Ahern via <a href="mailto:Karen.Ahern@example.com">email</a> or at (434) 924-1549.</p>
        </div>
        <!-- FAQ items -->
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">What is a clinical trial?</div>
            <div class="faq-answer">A clinical trial is a research study that involves human participants to test new treatments, interventions, or therapies to determine their safety and effectiveness...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Why should I participate in a clinical trial?</div>
            <div class="faq-answer">Participating in a clinical trial can provide access to new treatments before they are widely available, contribute to medical research, and help others in the future...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Why are clinical trials needed?</div>
            <div class="faq-answer">Clinical trials are necessary to evaluate the effectiveness and safety of new treatments or interventions, ensuring that they provide the desired outcomes without significant risks...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Can anyone participate in a clinical trial?</div>
            <div class="faq-answer">Eligibility to participate in a clinical trial depends on the study's specific criteria, which may include age, gender, health status, and other factors...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">What are the risks?</div>
            <div class="faq-answer">The risks of participating in a clinical trial vary depending on the study but may include side effects, discomfort, or other unforeseen complications...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">What does informed consent mean?</div>
            <div class="faq-answer">Informed consent is the process of providing potential participants with all the necessary information about a clinical trial, including its purpose, duration, required procedures, risks, and benefits, to make an informed decision about participation...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">What is the role of the Institutional Review Board for Health Sciences Research (ISB-HSR)?</div>
            <div class="faq-answer">The Institutional Review Board for Health Sciences Research (ISB-HSR) reviews and approves clinical trials to ensure that they are ethical and that participants' rights and welfare are protected...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Are there benefits to participating in a clinical trial?</div>
            <div class="faq-answer">Benefits of participating in a clinical trial can include accessing new treatments, contributing to scientific knowledge, and receiving additional medical care related to the trial...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Who will I work with?</div>
            <div class="faq-answer">Participants in a clinical trial typically work with a team of healthcare professionals, including doctors, nurses, and clinical research coordinators, who manage the trial and monitor participants' health...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">What will I have to do to participate in a clinical trial?</div>
            <div class="faq-answer">To participate in a clinical trial, you may need to undergo various screening tests, follow specific protocols, and attend regular appointments as outlined in the study plan...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">What happens after I enroll in a clinical trial?</div>
            <div class="faq-answer">After enrolling in a clinical trial, you will receive specific instructions about the procedures, treatment plans, and any necessary follow-up appointments to monitor your progress and safety...</div>
        </div>
        <!-- Additional FAQ items -->
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">How long do clinical trials usually last?</div>
            <div class="faq-answer">The duration of a clinical trial can vary widely depending on the type of study and its objectives. Some trials may last a few weeks or months, while others could take years to complete...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Will I be compensated for participating in a clinical trial?</div>
            <div class="faq-answer">Compensation for participating in a clinical trial varies depending on the study. Some trials may offer financial compensation for time and travel, while others may provide free medical care or treatments related to the study...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">What if I want to withdraw from the trial?</div>
            <div class="faq-answer">You have the right to withdraw from a clinical trial at any time, without penalty or loss of benefits. If you decide to withdraw, you should notify the research team immediately to discuss your reasons and any follow-up care needed...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">Are my personal data and health information safe during the trial?</div>
            <div class="faq-answer">Yes, all personal data and health information collected during a clinical trial are kept confidential and are used only for research purposes. Studies are required to follow strict ethical guidelines and regulations to protect participants' privacy...</div>
        </div>
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(event)">How do I know if a clinical trial is right for me?</div>
            <div class="faq-answer">Deciding to participate in a clinical trial is a personal decision. It is important to consider the potential benefits, risks, and your own personal circumstances. Discussing with your healthcare provider and asking questions can help you make an informed choice...</div>
        </div>
    </div>
</body>
</html>
