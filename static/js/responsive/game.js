//some function to fetch data using flask function

async function fetchQuizData() {
    const response = await fetch('/quiz');
    const quizData = await response.json();
    // Render questions on the page
}

//function to event handler to  see what has been selected
function handleAnswerSelection(selectedOption, correctOption) {
    if (selectedOption === correctOption) {
        alert('Correct!');
    } else {
        alert('Incorrect!');
    }
}