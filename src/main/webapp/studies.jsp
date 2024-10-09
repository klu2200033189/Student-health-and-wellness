<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Studies, Projects, and Publications</title>
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
            height: 160vh;
            color: #333;
        }

        /* Main content styling */
        .main-content {
            width: 65%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-left: 270px; /* To account for sidebar width */
        }

        .main-content h1, .main-content h2 {
            color: #012D85;
        }

        .main-content p {
            line-height: 1.6;
        }

        .main-content ul {
            padding-left: 20px;
            margin-bottom: 20px;
            list-style-type: square;
        }

        .main-content ul li {
            margin-bottom: 10px;
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

        .section-title {
            text-align: center;
            padding: 20px 0;
        }

        .section-title h2 {
            margin: 0;
            padding-bottom: 10px;
            border-bottom: 2px solid #333;
        }

        .content-section h3 {
            color: #0056b3;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <div class="sidebar">
        <h2>Research</h2>
        <a href="studies.jsp" style="color: #E87722;">Studies, Projects, and Publications</a>
        <a href="FAQ's.jsp">Clinical Trial:FAQ's</a>
        <a href="Research.jsp">Research Team</a>
        <a href="index1.jsp">Home</a>

        
    </div>

    <div class="main-content">
        <h1>Studies, Projects, and Publications</h1>

        <!-- College Health Surveillance Network (CHSN) - India -->
        <section class="content-section">
            <div class="section-title">
                <h2>College Health Surveillance Network (CHSN) - India</h2>
            </div>
            <p>
                The <strong>College Health Surveillance Network (CHSN)</strong> in India is a multi-institutional, de-identified medical records dataset from student health centers (SHCs) that are part of a nationally representative sample of Indian colleges and universities. CHSN enables the collection of medical diagnoses, services, and treatments for university students across India, and supports epidemiologic and service utilization studies relevant to the Indian student population.
            </p>
            <p>
                Founded in 2011 with initial support from the Indian Council of Medical Research (ICMR), CHSN is the first national initiative in India to utilize data from electronic medical records of students seeking care at university student health centers to evaluate and monitor the health of the college student population across the country.
            </p>
            <p><a href="#">Read More About CHSN - India</a></p>
        </section>

        <!-- Student Health Research Database (SHRD) - India -->
        <section class="content-section">
            <div class="section-title">
                <h2>Student Health Research Database (SHRD) - India</h2>
            </div>
            <p>
                The <strong>Student Health Research Database (SHRD)</strong> in India is a comprehensive, integrated data repository created through the linking of multiple routinely collected student datasets across various university campuses in India. The database contains over 150,000 student cases from 2009 to the present, enabling the de-identified tracking of students from the time of their first enrollment until graduation.
            </p>
            <p>
                This database serves as a cost-efficient longitudinal data source for multi-departmental surveillance, epidemiologic research, training, and service/quality improvement specifically tailored to the Indian context.
            </p>
        </section>

        <!-- Current Clinical Trials and Studies -->
        <section class="content-section">
            <div class="section-title">
                <h2>Current Clinical Trials and Studies</h2>
            </div>
            <ul>
                <li>
                    <strong>Student Health Research Database</strong><br>
                    IRB-HSR #24141. PI: Dr. Rajesh Kumar<br>
                    Location: All India Institute of Medical Sciences (AIIMS), New Delhi
                </li>
                <li>
                    <strong>College Health Surveillance Network</strong><br>
                    IRB-HSR #28454. PI: Dr. Priya Sharma<br>
                    Location: National Institute of Mental Health and Neurosciences (NIMHANS), Bengaluru
                </li>
                <li>
                    <strong>Magnesium and Riboflavin Treatment for Post-Concussion Headache</strong><br>
                    IRB-HSR #31920. PI: Dr. Anjali Deshmukh<br>
                    Location: Tata Memorial Hospital, Mumbai
                </li>
                <li>
                    <strong>Sexual Harm Incidence Analysis</strong><br>
                    IRB-SBS #4260. PI: Dr. Amit Desai<br>
                    Location: Christian Medical College (CMC), Vellore
                </li>
            </ul>
        </section>

        <!-- Past Clinical Trials -->
        <section class="content-section">
            <div class="section-title">
                <h2>Past Clinical Trials</h2>
            </div>
            <ul>
                <li>
                    <strong>A Randomized Controlled Study to Assess SARS-CoV-2 Infection, Viral Shedding, and Subsequent Potential Transmission in University Students Immunized with Covaxin</strong><br>
                    HSR-IRB #310108. PI: Dr. Ankit Mehta and Dr. Rajesh Kumar<br>
                    Year: 2021
                </li>
                <li>
                    <strong>Utilization of a Screening and Referral Algorithm Versus Usual Care in Clinical Decision-Making Involving College Students Presenting with Symptoms Commonly Associated with Eating Disorders</strong><br>
                    IRB-HSR #31292. PI: Dr. Meera Joshi<br>
                    Year: 2020
                </li>
                <li>
                    <strong>A Rapid Test for COVID-19</strong><br>
                    IRB-HSR #300236 (In collaboration with IIT Delhi, Department of Chemistry)<br>
                    PI: Dr. Vikas Gupta<br>
                    Year: 2021
                </li>
            </ul>
        </section>

        <!-- Current Projects -->
        <section class="content-section">
            <div class="section-title">
                <h2>Current Projects</h2>
            </div>
            <ul>
                <li>
                    <strong>Alcohol Intoxication Among Students Presenting to the University Hospital Emergency Department (ED)</strong><br>
                    PI: Dr. Priya Sharma
                </li>
                <li>
                    <strong>Developing a Risk Screening Algorithm for Alcohol and Other Substance Abuse Among Indian Students – A Data Linkage Study</strong><br>
                    PI: Dr. Rajesh Kumar
                </li>
                <li>
                    <strong>Determinants, Patterns, and Costs of Service Utilization at the AIIMS Student Health Center</strong><br>
                    PI: Dr. Anjali Deshmukh
                </li>
                <li>
                    <strong>MHealth Intervention to Prevent Alcohol and Substance Abuse for High-Risk Students Attending the University Student Health Center Clinic</strong><br>
                    PI: Dr. Amit Desai
                </li>
            </ul>
        </section>

        <!-- Publications -->
        <section class="content-section">
            <div class="section-title">
                <h2>Publications</h2>
            </div>
            <ul>
                <li>
                    <strong>The College Health Surveillance Network (CHSN): Assessing the Health of the Indian University Student Population</strong><br>
                    Journal: Indian Journal of Public Health, 2021
                </li>
                <li>
                    <strong>Patterns of Substance Abuse Among Indian University Students</strong><br>
                    Journal: Indian Journal of Psychiatry, 2020
                </li>
                <li>
                    <strong>COVID-19: Understanding Viral Transmission Among Students</strong><br>
                    Journal: Indian Journal of Medical Research, 2021
                </li>
            </ul>
        </section>
    </div>
</body>
</html>
