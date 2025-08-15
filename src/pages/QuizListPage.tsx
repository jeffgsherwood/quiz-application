// src/pages/QuizListPage.tsx
import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
import './QuizListPage.css';

// Defines the structure of a single quiz object.
interface Quiz {
  id: number;
  name: string;
  subject: string;
  numQuestions: number;
}

const QuizListPage: React.FC = () => {
  const [quizzes, setQuizzes] = useState<Quiz[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchQuizzes = async () => {
      try {
        const response = await axios.get('/api/quizzes');
        let quizzesData = response.data;

        if (!Array.isArray(quizzesData)) {
          quizzesData = [quizzesData];
        }

        if (quizzesData.length === 0) {
          setError("No quizzes found.");
        } else {
          setQuizzes(quizzesData);
        }
      } catch (err) {
        setError("Failed to fetch quizzes. Please check your backend server.");
        console.error("Error fetching quizzes:", err);
      } finally {
        setLoading(false);
      }
    };
    fetchQuizzes();
  }, []);

  if (loading) {
    return <div className="loading-message">Loading quizzes...</div>;
  }

  if (error) {
    return <div className="error-message">{error}</div>;
  }

  const quizzesBySubject = quizzes.reduce((acc, quiz) => {
    const subject = quiz.subject || 'Uncategorized';
    if (!acc[subject]) {
      acc[subject] = [];
    }
    acc[subject].push(quiz);
    return acc;
  }, {} as Record<string, Quiz[]>);

  return (
    <div className="quiz-list-container">
      <h1>Available Quizzes</h1>
      {Object.keys(quizzesBySubject).map(subject => (
        <div key={subject} className="quiz-subject-section"> {/* Add key here */}
          <h2>{subject}</h2>
          <div className="quiz-grid">
            {quizzesBySubject[subject].map(quiz => (
              <div key={quiz.id} className="quiz-card"> {/* Existing key here */}
                <h3>{quiz.name}</h3>
                <p className="quiz-info">Subject: {quiz.subject}</p>
                <p className="quiz-info">Questions: {quiz.numQuestions}</p>
                <Link to={`/quiz/${quiz.id}`} className="start-link-btn">
                  Quiz Preview
                </Link>
              </div>
            ))}
          </div>
        </div>
      ))}
    </div>
  );
};

export default QuizListPage;