// src/pages/QuizScorePage.tsx
import React from 'react';
import { Link, useLocation } from 'react-router-dom';

const QuizScorePage: React.FC = () => {
  // useLocation hook to access the state passed from the navigate function
  const location = useLocation();
  const score = location.state?.score;

  // Handle cases where the score is not available
  if (score === undefined || score === null) {
    return (
      <div className="error-message">
        <h2>Error: Score Not Found</h2>
        <p>We couldn't retrieve your score. Please try taking the quiz again.</p>
        <Link to="/" className="back-btn">Back to Quiz List</Link>
      </div>
    );
  }

  return (
    <div className="quiz-score-container">
      <h2>Quiz Completed!</h2>
      <div className="score-display">
        Your Score:
        <span className="score-value">{score}%</span>
      </div>
      <p>Congratulations on completing the quiz!</p>
      <Link to="/" className="back-btn">
        Take Another Quiz
      </Link>
    </div>
  );
};

export default QuizScorePage;