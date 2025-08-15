// src/pages/QuizTakingPage.tsx
import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import { useAuth } from '../context/AuthContext';

// Defines the structure of a question and its answers
interface Answer {
  id: number;
  answerText: string;
}

interface Question {
  id: number;
  questionText: string;
  answers: Answer[];
}

const QuizTakingPage: React.FC = () => {
  const { quizId } = useParams<{ quizId: string }>();
  const { userId } = useAuth();
  const navigate = useNavigate();

  // State to store the fetched questions
  const [questions, setQuestions] = useState<Question[]>([]);
  // State to store the user's selected answers, using numbers for keys
  const [userAnswers, setUserAnswers] = useState<Record<number, string>>({});
  // State for loading and error handling
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  // Effect to fetch the questions from the backend when the component loads
  useEffect(() => {
    const fetchQuestions = async () => {
      try {
        const response = await axios.get<Question[]>(`/api/quizzes/${quizId}/questions`);
        setQuestions(response.data);
      } catch (err) {
        setError("Failed to load questions. Please check the quiz ID.");
        console.error("Error fetching questions:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchQuestions();
  }, [quizId]);

  // Handler for when a user selects an answer
  const handleAnswerSelect = (questionId: number, answerText: string) => {
    setUserAnswers(prevAnswers => ({
      ...prevAnswers,
      [questionId]: answerText,
    }));
  };

  // Handler for quiz submission
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault(); // Prevents default form submission behavior

    // Check if the user has answered all questions and confirm submission
    if (Object.keys(userAnswers).length !== questions.length) {
      if (!window.confirm("You have not answered all questions. Are you sure you want to submit?")) {
        return;
      }
    }

    if (!userId) {
      alert("You must be logged in to submit a quiz.");
      return;
    }

    try {
      // Create the payload to match the backend's QuizSubmissionDto
      const submissionPayload = {
        quizId: parseInt(quizId as string),
        userId,
        answers: userAnswers,
      };

      // Send the user's answers to the backend for grading
      const response = await axios.post('/api/quizzes/submit', submissionPayload);

      const score = response.data;
      // Navigate to the results page, passing the score in the state
      navigate(`/quiz/${quizId}/results`, { state: { score } });

    } catch (err) {
      setError("Submission failed. Please try again.");
      console.error("Error submitting quiz:", err);
    }
  };

  // Conditional rendering for loading and error states
  if (loading) {
    return <div className="loading-message">Loading questions...</div>;
  }

  if (error || questions.length === 0) {
    return <div className="error-message">{error || "No questions found for this quiz."}</div>;
  }

  // Main component render
  return (
    <div className="quiz-taking-container">
      <h1>Quiz Questions</h1>
      <form onSubmit={handleSubmit}>
        {questions.map(question => (
          <div key={question.id} className="question-block">
            <h3>{question.questionText}</h3>
            <div className="answers-list">
              {question.answers.map(answer => (
                <div key={answer.id} className="answer-option">
                  <input
                    type="radio"
                    id={`q${question.id}-a${answer.id}`}
                    name={`question-${question.id}`}
                    value={answer.answerText}
                    onChange={() => handleAnswerSelect(question.id, answer.answerText)}
                    checked={userAnswers[question.id] === answer.answerText}
                    required
                  />
                  <label htmlFor={`q${question.id}-a${answer.id}`}>
                    {answer.answerText}
                  </label>
                </div>
              ))}
            </div>
          </div>
        ))}
        <button type="submit" className="submit-btn">Submit Quiz</button>
      </form>
    </div>
  );
};

export default QuizTakingPage;