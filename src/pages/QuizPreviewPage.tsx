// src/pages/QuizPreviewPage.tsx
import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import axios from 'axios';
import './QuizPreviewPage.css';

// Defines the structure of the quiz object we expect from the backend.
interface Quiz {
  id: number;
  name: string;
  subject: string;
  description?: string;
  numQuestions: number;
}

const QuizPreviewPage: React.FC = () => {
  const { quizId } = useParams<{ quizId: string }>();

  const [quiz, setQuiz] = useState<Quiz | null>(null);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    // Only proceed if quizId is defined and a number.
    if (!quizId || isNaN(Number(quizId))) {
      setError("Invalid quiz ID provided. Please return to the quiz list.");
      setLoading(false);
      return; // Exit early if the ID is invalid.
    }

    const fetchQuizDetails = async () => {
      try {
        const response = await axios.get<Quiz>(`/api/quizzes/${quizId}`);
        setQuiz(response.data);
      } catch (err) {
        setError("Failed to load quiz details. The quiz may not exist.");
        console.error("Error fetching quiz:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchQuizDetails();
  }, [quizId]);

  if (loading) {
    return <div className="loading-message">Loading quiz details...</div>;
  }

  if (error || !quiz) {
    return (
      <div className="error-container">
        <div className="error-message">
          {error || "Quiz not found."}
          <Link to="/" className="back-btn">
            Return to Quiz List
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="quiz-preview-container">
      <h2>{quiz.name}</h2>
      <p className="quiz-subject">Subject: {quiz.subject}</p>
      <p className="quiz-description">{quiz.description}</p>
      <p className="quiz-questions-count">Number of Questions: {quiz.numQuestions}</p>
      <div className="button-group">
        <Link to={`/quiz/${quiz.id}/take`} className="start-btn">
          Start Quiz
        </Link>
        <Link to="/" className="back-btn">
          Back to Quiz List
        </Link>
      </div>
    </div>
  );
};

export default QuizPreviewPage;