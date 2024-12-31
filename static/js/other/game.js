let questions = [];
let currentQuestionIndex = 0;
let score = 0;
let quiznumber = parseInt(localStorage.getItem('number'));


async function fetchQuestions() {
    const response = await fetch('/get-questions', {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            number: quiznumber,
        }),
    });
    questions = await response.json();
    showQuestion(questions[currentQuestionIndex]);
}

async function updateScore(score) {
    fetch('/update_score', {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            score: score,
            number: quiznumber,
        })
    });
    window.location = "/quizzes"
}


function showQuestion(question) {
    const questionElement = document.getElementById("question");
    const answerButtonsElement = document.getElementById("answer-buttons");
    resetState();

    questionElement.innerText = question.question;

    if (question.questionType === "multiple_choice") {
        // Display multiple-choice answers
        question.answers.forEach((answer) => {
            const button = document.createElement("button");
            button.innerText = answer;
            button.classList.add("btn");
            button.addEventListener("click", () => selectAnswer(button, question.correct));
            answerButtonsElement.appendChild(button);
        });
    } else if (question.questionType === "true_false") {
        // Display True/False buttons
        ["TRUE", "FALSE"].forEach((answer) => {
            const button = document.createElement("button");
            button.innerText = answer;
            button.classList.add("btn");
            button.addEventListener("click", () => selectAnswer(button, question.correct));
            answerButtonsElement.appendChild(button);
        });
    } else if (question.questionType === "short") {
        // Display a text box for short answer
        const input = document.createElement("input");
        input.type = "text";
        input.placeholder = "Type your answer...";
        input.classList.add("input-box");
        input.id = "short-answer-input";
        answerButtonsElement.appendChild(input);

        const submitButton = document.createElement("button");
        submitButton.innerText = "Submit";
        submitButton.classList.add("btn");
        submitButton.addEventListener("click", () => {
            const userAnswer = document.getElementById("short-answer-input").value.trim();
            selectAnswer(userAnswer, question.correct);
        });
        answerButtonsElement.appendChild(submitButton);
    }
}

function resetState() {
    const answerButtonsElement = document.getElementById("answer-buttons");
    document.getElementById("next-btn").classList.add("hide");
    while (answerButtonsElement.firstChild) {
        answerButtonsElement.removeChild(answerButtonsElement.firstChild);
    }
}

function selectAnswer(selectedAnswer, correctAnswer) {
    let isCorrect = false;

    // Check answer based on question type
    if (typeof selectedAnswer === "string") {
        // For short answer, we compare the input text
        isCorrect = selectedAnswer.toLowerCase() === correctAnswer.toLowerCase();
    } else {
        // For multiple choice or True/False, compare the button text
        isCorrect = selectedAnswer.innerText.trim() === correctAnswer.trim();
    }

    if (isCorrect) {
        score++;
        if (selectedAnswer instanceof HTMLElement) {
            selectedAnswer.classList.add("correct");
        }
    } else {
        if (selectedAnswer instanceof HTMLElement) {
            selectedAnswer.classList.add("wrong");
        }
    }

    // Highlight the correct answer if it's multiple-choice or True/False
    if (selectedAnswer instanceof HTMLElement) {
        Array.from(document.getElementById("answer-buttons").children).forEach(btn => {
            btn.disabled = true;
            if (btn.innerText.trim() === correctAnswer.trim()) {
                btn.classList.add("correct");
            }
        });
    }

    document.getElementById("next-btn").classList.remove("hide");
    document.getElementById("score").innerText = score;
}

document.getElementById("next-btn").addEventListener("click", () => {
    currentQuestionIndex++;
    if (currentQuestionIndex < questions.length) {
        showQuestion(questions[currentQuestionIndex]);
    } else {
        alert(`Quiz finished! Your final score: ${score}/${questions.length}`);
        updateScore(score);
        score = 0
        currentQuestionIndex = 0
    }
});

fetchQuestions();