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
        // Corrected URL to use the proxy
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

  // Function to handle the user selecting an answer
  const handleAnswerSelect = (questionId: number, answerText: string) => {
    setUserAnswers(prevAnswers => ({
      ...prevAnswers,
      [questionId]: answerText
    }));
  };

  // Function to handle quiz submission
  const handleSubmit = async (event: React.FormEvent) => {
    event.preventDefault();
    setLoading(true);
    setError(null);

    const submissionPayload = {
      quizId: Number(quizId),
      userId: userId,
      answers: userAnswers
    };

    console.log("Submitting quiz...");
    console.log("userId:", userId);
    console.log("quizId:", quizId);
    console.log("Answers to be submitted:", userAnswers);
    console.log("Full submission payload:", submissionPayload);

    try {
      // Corrected URL to use the proxy
      const response = await axios.post(`/api/quizzes/submit`, submissionPayload);
      console.log("Quiz submitted successfully:", response.data);
      setLoading(false);
      // Corrected navigation to the correct URL with state
      navigate(`/quiz/${quizId}/results`, { state: { score: response.data } });
    } catch (err) {
      if (axios.isAxiosError(err)) {
        console.error("Error submitting quiz:", err);
        setError("Failed to submit quiz. Please try again.");
      } else {
        console.error("An unexpected error occurred:", err);
        setError("An unexpected error occurred. Please try again.");
      }
      setLoading(false);
    }
  };

  // Render the component with loading and error states
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