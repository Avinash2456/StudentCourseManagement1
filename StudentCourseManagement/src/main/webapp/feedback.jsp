<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .feedback-container {
            width: 80%;
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"], textarea, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        textarea {
            resize: vertical;
        }

        .rating-container {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 10px;
        }

        .star {
            font-size: 40px;
            color: #ccc;
            cursor: pointer;
            transition: transform 0.2s ease, color 0.2s ease;
        }

        .star:hover,
        .star.active {
            color: #FFD700;
            transform: scale(1.2);
        }

        .star:hover {
            animation: blink 0.5s infinite;
        }

        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0.5; }
            100% { opacity: 1; }
        }

        .btn-submit {
            margin-top: 20px;
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-submit:hover {
            opacity: 0.9;
        }

        /* Lottie container */
        .lottie-container {
            width: 100%;
            max-width: 300px;
            margin: 20px auto;
        }

        /* Center content */
        .center-content {
            text-align: center;
        }
    </style>
</head>
<body>

<!-- Lottie Animation -->

<div class="feedback-container">

    <h3>Feedback Form</h3>
    <form action="submitFeedback" method="post">
        <!-- User Details -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" placeholder="Enter your email" required>

        <!-- General Platform Feedback -->
        <label for="navigation">How easy is it to navigate the platform?</label>
        <select id="navigation" name="navigation" required>
            <option value="">Select an option</option>
            <option value="Very Easy">Very Easy</option>
            <option value="Easy">Easy</option>
            <option value="Neutral">Neutral</option>
            <option value="Difficult">Difficult</option>
            <option value="Very Difficult">Very Difficult</option>
        </select>

        <!-- Course Content Feedback -->
        <label for="contentRating">Rate the course content:</label>
        <div class="rating-container" id="rating-container">
            <span class="star" data-value="1">&#9733;</span>
            <span class="star" data-value="2">&#9733;</span>
            <span class="star" data-value="3">&#9733;</span>
            <span class="star" data-value="4">&#9733;</span>
            <span class="star" data-value="5">&#9733;</span>
        </div>

        <!-- Open Feedback -->
        <label for="comments">Additional Comments:</label>
        <textarea id="comments" name="comments" rows="5" placeholder="Write your feedback here..."></textarea>

        <!-- Submit Button -->
        <button type="submit" class="btn-submit">Submit Feedback</button>
    </form>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.7.11/bodymovin.min.js"></script>

<script>
    // Load Lottie animation
    const animationData = {
        container: document.getElementById('lottie-animation'),
        renderer: 'svg',
        loop: true,
        autoplay: true,
        path: 'https://assets1.lottiefiles.com/packages/lf20_9abx3buj.json' // Replace with your Lottie file URL
    };
    bodymovin.loadAnimation(animationData);

    // Star rating functionality
    const stars = document.querySelectorAll('.star');
    let selectedRating = 0;

    stars.forEach(star => {
        star.addEventListener('mouseover', () => {
            const value = star.getAttribute('data-value');
            highlightStars(value);
        });

        star.addEventListener('mouseout', () => {
            if (selectedRating === 0) {
                removeHighlight();
            } else {
                highlightStars(selectedRating);
            }
        });

        star.addEventListener('click', () => {
            selectedRating = star.getAttribute('data-value');
            highlightStars(selectedRating);
        });
    });

    function highlightStars(rating) {
        stars.forEach(star => {
            const value = star.getAttribute('data-value');
            if (value <= rating) {
                star.classList.add('active');
            } else {
                star.classList.remove('active');
            }
        });
    }

    function removeHighlight() {
        stars.forEach(star => {
            star.classList.remove('active');
        });
    }
</script>

</body>
</html>
