<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CAPS Groups - Well-Being Guide</title>
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
            align-items: flex-start;
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
            width: 80%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow-y: auto;
            max-height: 90vh;
            margin-left: 270px;
            margin-top: 20px;
        }

        .main-content h1, .main-content h2, .main-content h3 {
            color: #012D85;
        }

        .main-content p {
            line-height: 1.6;
        }

        .main-content ul {
            padding-left: 20px;
            margin-bottom: 20px;
        }

        .main-content ul li {
            margin: 10px 0;
        }

        .main-content ul li a {
            color: #2980b9;
            text-decoration: none;
        }

        .main-content ul li a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Our Service</h2>
        <a href="caps-groups.jsp" style="color: #E87722;">CAPS Groups</a> <!-- Active link styled -->
        <a href="#">Care Manager</a>
        <a href="#">Embedded Counselors</a>
        <h2>Emergency Care</h2>
        <a href="suicide-awareness.jsp">Suicide Awareness and Prevention</a>
        <h2>Mental Health Resources</h2>
        <a href="#">For Students</a>
        <a href="#">For Faculty and Staff</a>
        <a href="meet-our-team.jsp">Meet Our Team</a>
        <a href="#">Mental Health FAQ's</a>
        <li><a href="index1.jsp">Home</a></li>
        
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>CAPS Groups</h1>
        <p>
            CAPS (Counseling and Psychological Services) offers a variety of group therapy options designed to meet the diverse needs of students. 
            Group therapy provides a unique opportunity for students to connect with others, share their experiences, and receive support in a safe, 
            confidential environment. Whether you are looking to improve your interpersonal skills, find support among peers, or develop specific coping strategies, 
            there is a group for you.
        </p>

        <h2>Interpersonal Process Groups</h2>
        <p>
            Interpersonal Process Groups provide a safe space for students to explore and address a variety of emotional and social challenges. 
            These groups focus on enhancing interpersonal skills, increasing self-awareness, and fostering a sense of connection with others. 
            Participants learn to navigate social dynamics, improve communication, and build more meaningful relationships. By sharing experiences 
            and receiving feedback from peers, members can gain new perspectives on their behaviors and emotions.
        </p>
        <ul>
            <li><a href="#">Eating Disorder Recovery Group</a> - A group dedicated to supporting students who are recovering from eating disorders. 
            The group offers a compassionate environment to discuss challenges, share experiences, and develop healthier coping strategies. Participants 
            can explore the emotional and psychological aspects of eating disorders, gain insight into their behaviors, and learn practical skills for managing triggers and maintaining recovery.</li>
            <li><a href="#">Interpersonal Process Group - Understanding Self and Others</a> - This group focuses on improving self-awareness and understanding how one relates to others. 
            Members are encouraged to explore their feelings, thoughts, and behaviors in the context of relationships, providing an opportunity to understand and change patterns that may be unhelpful or harmful. 
            The group fosters a supportive environment where participants can practice new ways of interacting and gain confidence in social situations.</li>
            <li><a href="#">Interpersonal Process Group - Graduate Students</a> - Tailored for graduate students facing unique challenges related to their academic and social lives. 
            This group provides a platform to discuss experiences, build support networks, and enhance interpersonal skills. Topics may include managing stress, balancing academic responsibilities with personal life, 
            and navigating relationships in a high-pressure environment.</li>
        </ul>

        <h2>Support Groups</h2>
        <p>
            Support Groups are designed to provide a community for individuals who share similar experiences or identities. These groups offer a space for 
            mutual support, empathy, and understanding, helping members cope with specific issues or navigate particular life circumstances. By connecting with others 
            who have similar experiences, members can find comfort, validation, and strength in knowing they are not alone. Support groups are often facilitated by 
            professionals who guide discussions and provide resources to help members manage their challenges.
        </p>
        <ul>
            <li><a href="#">Bipolar Disorder Support Group</a> - Offers a supportive environment for students living with bipolar disorder. 
            Members share their experiences, coping strategies, and receive support from peers who understand their struggles. The group aims to reduce stigma, 
            provide education about the disorder, and empower members to take an active role in their treatment and recovery.</li>
            <li><a href="#">Black Graduate Students Support Group</a> - A space for Black graduate students to connect, share experiences, and discuss the challenges unique to their identity in academic settings. 
            The group provides an opportunity to address issues such as racial discrimination, microaggressions, and the pressures of being a minority in higher education. Members can find solidarity and support in a safe, 
            understanding environment.</li>
            <li><a href="#">Graduate Students Support Group</a> - Provides support for graduate students managing the pressures of academic life, including balancing studies, research, and personal well-being. 
            The group discusses topics such as imposter syndrome, burnout, and the challenges of pursuing advanced degrees, offering strategies for coping and thriving in a demanding environment.</li>
            <li><a href="#">Grief Group</a> - For students who are dealing with loss, this group offers a supportive community where they can express their grief and find comfort in shared experiences. 
            The group provides a space to process emotions, discuss the impact of loss on daily life, and explore ways to honor and remember loved ones. Participants can find solace in knowing they are not alone in their grief.</li>
            <li><a href="#">International Students Support Circle</a> - Focuses on the unique experiences of international students. The group addresses cultural adjustment, homesickness, and building a support network in a new environment. 
            Members can discuss the challenges of adapting to a new culture, language barriers, and navigating the complexities of life as an international student, all while building friendships and a sense of community.</li>
            <li><a href="#">LGBTQ+ Support Group</a> - A supportive space for LGBTQ+ students to discuss identity, relationships, and experiences related to being part of the LGBTQ+ community. 
            The group provides a safe environment to explore issues such as coming out, dealing with discrimination, and building a positive self-identity. Members can find support, affirmation, and community among peers who share similar experiences.</li>
        </ul>

        <h2>Skills Development</h2>
        <p>
            Skills Development Groups are aimed at helping students acquire and refine specific skills to manage various aspects of their lives. 
            These groups focus on practical techniques and strategies that students can apply to improve their mental health, academic performance, 
            and overall well-being. By learning and practicing these skills in a supportive group setting, members can build confidence and competence in managing their challenges.
        </p>
        <ul>
            <li><a href="#">ADHD Skills Group</a> - Designed for students with ADHD, this group focuses on developing skills for managing attention, organization, and time management. 
            The group provides practical strategies to help participants succeed academically and personally, such as planning and prioritization, minimizing distractions, and developing effective study habits. 
            Members can also share their experiences and learn from each other in a supportive environment.</li>
            <li><a href="#">DBT Skills Group</a> - This group teaches Dialectical Behavior Therapy (DBT) skills, which are effective for managing emotions, improving interpersonal relationships, and reducing stress. 
            Participants learn techniques for mindfulness, distress tolerance, emotion regulation, and interpersonal effectiveness. The group offers a structured environment to practice these skills, receive feedback, 
            and gain confidence in applying them to real-life situations.</li>
        </ul>

        <h2>Why Join a CAPS Group?</h2>
        <p>
            Group therapy offers several unique benefits compared to individual therapy. It provides a sense of community and belonging, helping members feel less isolated in their experiences. 
            Being part of a group can enhance self-awareness and social skills, as members learn from each other and provide mutual support. Groups also offer diverse perspectives and feedback, 
            which can lead to new insights and personal growth. Whether you're looking to build skills, receive support, or connect with others, joining a CAPS group can be a valuable addition to your well-being journey.
        </p>
        <p>
            If you are interested in joining a group or have any questions, please contact CAPS at [CAPS contact information]. Our team is here to help you find the group that best meets your needs and support your mental health and well-being.
        </p>
    </div>
</body>
</html>
