class Quiz {
  constructor(questions, answers) {
    this.questions = questions;
    this.answers = answers;
    this.guesses = [];
  }

  currentQuestion = () => {
    const guessesSoFar = this.guesses.length;
    const currentQuestion = this.questions[guessesSoFar];
    return currentQuestion;
  };

  answerCurrentQuestion = (guess) => {
    this.guesses.push(guess);
  };

  passedQuiz = () => {
    let passed = true;
    for (let i = 0; i < this.answers.length; i++) {
      const guess = this.guesses[i];
      const correctAnswer = this.answers[i];
      const guessIsCorrect = guess === correctAnswer;
      passed = passed && guessIsCorrect;
    }
    return passed;
  };
}
module.exports = Quiz;
