<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* General page background */
        body {
            background-image: url('images/building.jpg'); /* Replace with your actual image path */
            background-size: cover; /* Cover the entire page */
            background-attachment: fixed; /* Fixed background for a parallax effect */
            background-position: center; /* Center the background image */
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            color: #333;
        }
        /* Header Styles */
        .header-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
            background-color: rgba(0, 26, 87, 0.9);
            color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .logo-container img {
            height: 60px;
        }

        h1, h2 {
            margin: 0;
        }

        h1 {
            font-size: 28px;
        }

        h2 {
            font-size: 22px;
            font-weight: normal;
        }

        /* Chatbot Styles */
        .chatbot-container {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 1150px; /* Adjusted width */
            height: 1000px; /* Adjusted height */
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent background */
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            display: none; /* Initially hidden */
            flex-direction: column;
            max-height: 100%; /* Ensure the height does not exceed the container */
            transition: transform 0.5s ease, opacity 0.5s ease; /* Transition for slide-in and fade-in */
            transform: translateY(100px); /* Initial position off-screen */
            opacity: 0; /* Initially invisible */
        }

        .chatbot-header {
            background-color: rgba(0, 26, 87, 0.8); /* Semi-transparent background color */
            color: white;
            padding: 12px;
            border-radius: 10px 10px 0 0;
            text-align: center;
            font-weight: bold;
            position: relative; /* Position relative for the close button */
        }

        .chatbot-body {
            padding: 12px;
            flex: 1;
            overflow-y: auto;
            background-color: rgba(255, 255, 255, 0.3); /* Slightly transparent background */
            border-radius: 0 0 10px 10px; /* Rounded corners for the bottom */
        }

        .chatbot-footer {
            padding: 10px;
            border-top: 1px solid #ddd;
            display: flex;
            flex-direction: column;
        }

        .chatbot-input {
            width: calc(100% - 100px); /* Adjusted width to fit with buttons */
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 20px;
        }

        .chatbot-send, .chatbot-clear {
            background-color: #001a57;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            margin-top: 5px;
        }

        .chatbot-send:hover, .chatbot-clear:hover {
            background-color: #004080;
        }

        .chatbot-message {
            margin: 10px 0;
            padding: 10px;
            border-radius: 10px;
            max-width: 80%;
            word-wrap: break-word;
        }

        .user-message {
            background-color: #e3f2fd; /* Light blue for user messages */
            align-self: flex-end;
            border: 1px solid #bbdefb; /* Border color to differentiate */
        }

        .bot-message {
            background-color: #f1f8e9; /* Light green for bot messages */
            align-self: flex-start;
            border: 1px solid #c5e1a5; /* Border color to differentiate */
        }

        .chatbot-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #001a57;
            color: white;
            border: none;
            border-radius: 50%;
            padding: 20px; /* Increased padding */
            cursor: pointer;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        .chatbot-button:hover {
            background-color: #004080;
            transform: scale(1.1); /* Scale effect */
        }

        .chatbot-close {
            position: absolute;
            top: 10px;
            right: 10px;
            background: none;
            border: none;
            color: white;
            font-size: 20px;
            cursor: pointer;
        }

        .typing-indicator {
            display: none;
            font-style: italic;
            color: #999;
        }

        .quick-replies {
            display: flex;
            flex-wrap: wrap;
            margin-top: 10px;
            justify-content: space-between;
        }

        .quick-reply-button {
            background-color: #004080;
            color: white;
            border: none;
            border-radius: 20px;
            padding: 8px 12px;
            margin: 5px 0;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .quick-reply-button:hover {
            background-color: #0066cc;
        }

        /* Feedback Section */
        .feedback-section {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .feedback-button {
            background-color: #001a57;
            color: white;
            border: none;
            border-radius: 20px;
            padding: 8px 12px;
            cursor: pointer;
        }

        .feedback-button:hover {
            background-color: #004080;
        }
    </style>

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
                <!-- Navigation items -->
            </ul>
        </nav>
    </header>
    <main>
        <!-- Main content goes here -->
    </main>

    <!-- Chatbot button to open chat -->
    <button class="chatbot-button" onclick="toggleChatbot()">ASK Questions</button>

    <!-- Chatbot Container -->
    <div class="chatbot-container" id="chatbot-container">
        <div class="chatbot-header">
            Chatbot
            <button class="chatbot-close" onclick="closeChatbot()">close</button>
        </div>
        <div class="chatbot-body">
            <div class="chatbot-message bot-message">Hello! How can I assist you today?</div>
            <div class="typing-indicator" id="typing-indicator">Typing...</div>
        </div>
        <div class="chatbot-footer">
            <input type="text" class="chatbot-input" id="chatbot-input" placeholder="Type a message...">
            <button class="chatbot-send" onclick="sendMessage()">Send</button>
            <button class="chatbot-clear" onclick="clearChat()">Clear</button>
            <div class="quick-replies" id="quick-replies">
                <button class="quick-reply-button" onclick="sendQuickReply('I need help with mental health.')">Mental Health</button>
                <button class="quick-reply-button" onclick="sendQuickReply('I need information on disability services.')">Disability Services</button>
                <button class="quick-reply-button" onclick="sendQuickReply('Can you tell me about physical health?')">Physical Health</button>
                <button class="quick-reply-button" onclick="sendQuickReply('Can you help me with booking an appointment?')">Appointments</button>
                <button class="quick-reply-button" onclick="sendQuickReply('Can you diagnose based on symptoms?')">Symptoms</button>
                <button class="quick-reply-button" onclick="sendQuickReply('What are the operating hours?')">Operating Hours</button>
                <button class="quick-reply-button" onclick="sendQuickReply('How do I contact support?')">Contact Support</button>
                <button class="quick-reply-button" onclick="sendQuickReply('What are the available services?')">Available Services</button>
                <button class="quick-reply-button" onclick="sendQuickReply('Where can I find health resources?')">Health Resources</button>
            </div>
            <div class="feedback-section">
                <button class="feedback-button" onclick="provideFeedback('positive')">Good</button>
                <button class="feedback-button" onclick="provideFeedback('negative')">Bad</button>
            </div>
        </div>
    </div>

    <script>
        // Toggle chatbot visibility
        function toggleChatbot() {
            var chatbotContainer = document.getElementById("chatbot-container");
            if (chatbotContainer.style.display === "none" || chatbotContainer.style.display === "") {
                chatbotContainer.style.display = "flex";
                chatbotContainer.style.transform = "translateY(0)"; // Slide in
                chatbotContainer.style.opacity = "1"; // Fade in
            } else {
                chatbotContainer.style.transform = "translateY(100px)"; // Slide out
                chatbotContainer.style.opacity = "0"; // Fade out
                setTimeout(function() {
                    chatbotContainer.style.display = "none";
                }, 500); // Match the transition duration
            }
        }

        // Close chatbot
        function closeChatbot() {
            var chatbotContainer = document.getElementById("chatbot-container");
            chatbotContainer.style.transform = "translateY(100px)"; // Slide out
            chatbotContainer.style.opacity = "0"; // Fade out
            setTimeout(function() {
                chatbotContainer.style.display = "none";
            }, 500); // Match the transition duration
        }

        // Send message to the chatbot
        function sendMessage() {
            var inputField = document.getElementById("chatbot-input");
            var message = inputField.value.trim();
            if (message === "") return;

            var messageContainer = document.createElement("div");
            messageContainer.className = "chatbot-message user-message";
            messageContainer.textContent = message;
            document.querySelector(".chatbot-body").appendChild(messageContainer);

            // Simulate chatbot response
            document.getElementById("typing-indicator").style.display = "block";
            setTimeout(function() {
                document.getElementById("typing-indicator").style.display = "none";
                var responseContainer = document.createElement("div");
                responseContainer.className = "chatbot-message bot-message";
                responseContainer.textContent = getChatbotResponse(message);
                document.querySelector(".chatbot-body").appendChild(responseContainer);
                inputField.value = "";
            }, 1000); // Simulate typing delay
        }

        // Get response from the chatbot based on user message
        function getChatbotResponse(message) {
            var responses = {
                "mental health": "We offer counseling and support for mental health. How can we assist you further?",
                "disability services": "We provide various disability services. Please contact our office for detailed information.",
                "physical health": "For physical health, we have a range of services including check-ups and fitness programs.",
                "appointments": "You can book appointments through our online system or by calling our office.",
                "symptoms": "For symptom diagnosis, please consult with one of our healthcare providers.",
                "operating hours": "Our operating hours are Monday to Friday, 9 AM to 5 PM.",
                "contact support": "You can contact our support team at support@university.edu or call us at 123-456-7890.",
                "available services": "We offer a variety of services including mental health support, physical health programs, and more.",
                "health resources": "You can find health resources on our website under the 'Resources' section."
                
            };
            var normalizedMessage = message.toLowerCase();
            for (var key in responses) {
                if (normalizedMessage.includes(key)) {
                    return responses[key];
                }
            }
            return "I'm sorry, I didn't understand that. Can you please rephrase?";
        }

        // Send quick reply
        function sendQuickReply(reply) {
            var messageContainer = document.createElement("div");
            messageContainer.className = "chatbot-message user-message";
            messageContainer.textContent = reply;
            document.querySelector(".chatbot-body").appendChild(messageContainer);

            // Simulate chatbot response
            document.getElementById("typing-indicator").style.display = "block";
            setTimeout(function() {
                document.getElementById("typing-indicator").style.display = "none";
                var responseContainer = document.createElement("div");
                responseContainer.className = "chatbot-message bot-message";
                responseContainer.textContent = getChatbotResponse(reply);
                document.querySelector(".chatbot-body").appendChild(responseContainer);
            }, 1000); // Simulate typing delay
        }

        // Clear chat messages
        function clearChat() {
            document.querySelector(".chatbot-body").innerHTML = '';
        }

        // Provide feedback on chatbot responses
        function provideFeedback(type) {
            alert("Thank you for your feedback! You rated this as: " + type);
        }
    </script>
</body>
</html>
