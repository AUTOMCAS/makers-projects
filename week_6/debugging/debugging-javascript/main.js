const Quiz = require("./src/quiz.js");
const answers = require("./src/answers.js");
const questions = require("./src/questions.js");

const quiz = new Quiz(questions, answers);

const GUESSES = [null, null, null, null, null];
// const GUESSES = [true, true, false, false, true].reverse();

GUESSES.forEach((guess) => {
  console.log(quiz.currentQuestion());
  console.log(guess);
  quiz.answerCurrentQuestion(guess);
});
debugger;
if (quiz.passedQuiz()) {
  console.log("All answers correct!! Congratulations!");
} else {
  console.log("Unlucky!");
}
