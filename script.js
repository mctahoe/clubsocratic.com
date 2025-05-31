{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 document.addEventListener('DOMContentLoaded', () => \{\
    // Function to handle form submission\
    const handleFormSubmit = async (event, formId, messageId) => \{\
        event.preventDefault(); // Prevent default form submission\
\
        const form = document.getElementById(formId);\
        const messageElement = document.getElementById(messageId);\
        const formData = new FormData(form);\
        const button = form.querySelector('button[type="submit"]');\
\
        messageElement.style.display = 'none'; // Hide previous messages\
        button.disabled = true; // Disable button to prevent multiple submissions\
        button.textContent = 'Submitting...'; // Change button text\
\
        try \{\
            const response = await fetch(form.action, \{\
                method: 'POST',\
                body: formData,\
                headers: \{\
                    'Accept': 'application/json'\
                \}\
            \});\
\
            if (response.ok) \{\
                messageElement.textContent = 'Thanks for your submission!';\
                messageElement.className = 'form-message success';\
                form.reset(); // Clear the form fields\
            \} else \{\
                const data = await response.json();\
                if (Object.hasOwnProperty.call(data, 'errors')) \{\
                    messageElement.textContent = data["errors"].map(error => error["message"]).join(", ");\
                \} else \{\
                    messageElement.textContent = 'Oops! There was a problem submitting your form.';\
                \}\
                messageElement.className = 'form-message error';\
            \}\
        \} catch (error) \{\
            console.error('Submission error:', error);\
            messageElement.textContent = 'Oops! There was a network error. Please try again.';\
            messageElement.className = 'form-message error';\
        \} finally \{\
            messageElement.style.display = 'block'; // Show the message\
            button.disabled = false; // Re-enable the button\
            button.textContent = (formId === 'signup-form') ? 'Sign Up' : 'Submit Topic'; // Restore button text\
        \}\
    \};\
\
    // Attach event listeners to your forms\
    const signupForm = document.getElementById('signup-form');\
    if (signupForm) \{\
        signupForm.addEventListener('submit', (event) => handleFormSubmit(event, 'signup-form', 'signup-message'));\
    \}\
\
    const topicForm = document.getElementById('topic-form');\
    if (topicForm) \{\
        topicForm.addEventListener('submit', (event) => handleFormSubmit(event, 'topic-form', 'topic-message'));\
    \}\
\});}