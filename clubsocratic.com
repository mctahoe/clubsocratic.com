<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Club Socratic - San Francisco Social Debate Club</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>🗣️</text></svg>">
</head>
<body>
    <header>
        <div class="container">
            <h1>Club Socratic</h1>
            <p class="tagline">Engage, Debate, Connect in San Francisco!</p>
        </div>
    </header>

    <main>
        <section id="introduction" class="container">
            <h2>Welcome to Club Socratic</h2>
            <p>Club Socratic is a vibrant and welcoming social debate club for the San Francisco community. We believe in the power of respectful discourse to explore diverse ideas, challenge perspectives, and foster intellectual growth. Whether you're a seasoned debater or just curious to engage in thoughtful conversation, you'll find a home here.</p>
            <p>Our club is designed for curious minds eager to explore compelling topics, hone critical thinking skills, and connect with like-minded individuals in a friendly and open environment. We value open-mindedness, intellectual curiosity, and a commitment to respectful engagement above all else.</p>
        </section>

        <section id="meeting-structure" class="container">
            <h2>Our Meeting Structure</h2>
            <p>We aim for an engaging yet relaxed atmosphere. Here's what you can expect at a typical Club Socratic meeting:</p>
            <ul>
                <li><strong>Welcome & Introductions (10 min):</strong> A brief opening to greet new and returning members.</li>
                <li><strong>Topic Introduction (5 min):</strong> The day's selected topic is presented, often with a brief context or framing question.</li>
                <li><strong>Facilitated Discussion (45-60 min):</strong> This is the core of our meeting. A facilitator ensures everyone gets a chance to speak, maintains a respectful tone, and guides the conversation through various viewpoints. We encourage active listening and constructive dialogue.</li>
                <li><strong>Open Discussion & Socializing (15-30 min):</strong> The formal discussion concludes, but members are encouraged to continue networking, sharing thoughts, and building connections.</li>
                <li><strong>Wrap-up & Next Steps (5 min):</strong> Announcing the next meeting details and encouraging topic submissions.</li>
            </ul>
            <p>Our meetings are typically held bi-weekly, though specific dates and times will be announced via email. We prioritize an environment where ideas are debated, not people.</p>
        </section>

        <section id="signup" class="container call-to-action">
            <h2>Become a Member!</h2>
            <p>Join our community and stay updated on meeting schedules, discussion topics, and club news. We'll never share your email address.</p>
            <form id="signup-form" action="https://formspree.io/f/your-formspree-email-endpoint" method="POST">
                <input type="text" name="name" placeholder="Your Name (Optional)">
                <input type="email" name="_replyto" placeholder="Your Email Address (Required)" required>
                <textarea name="how_heard" placeholder="How did you hear about us? (Optional)"></textarea>
                <button type="submit">Sign Up</button>
                <p id="signup-message" class="form-message"></p>
            </form>
        </section>

        <section id="submit-topic" class="container call-to-action">
            <h2>Suggest a Discussion Topic</h2>
            <p>Help shape our future discussions! We welcome your unique and thought-provoking ideas for engaging debate topics. Please suggest open-ended questions that encourage diverse perspectives. (e.g., "Is artificial intelligence a net positive for society?", "What is the role of government in regulating emerging technologies?").</p>
            <form id="topic-form" action="https://formspree.io/f/your-formspree-email-endpoint" method="POST">
                <input type="text" name="name" placeholder="Your Name (Optional)">
                <input type="email" name="_replyto" placeholder="Your Email (Optional)">
                <textarea name="topic_suggestion" rows="5" placeholder="Your Topic Suggestion (Required)" required></textarea>
                <button type="submit">Submit Topic</button>
                <p id="topic-message" class="form-message"></p>
            </form>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2025 Club Socratic. All rights reserved. For the San Francisco Community.</p>
        </div>
    </footer>

    <script src="script.js"></script>
</body>
</html>
