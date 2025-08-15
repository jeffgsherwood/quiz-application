// src/App.tsx
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider, useAuth } from './context/AuthContext';
import Header from './components/Header';
import QuizListPage from './pages/QuizListPage';
import QuizPreviewPage from './pages/QuizPreviewPage'; // Import the new component
import LoginPage from './components/LoginPage';
import RegisterPage from './components/RegisterPage';
import './App.css';
import './components/Header.css';
import QuizTakingPage from './pages/QuizTakingPage';
import QuizScorePage from './pages/QuizScorePage';

// A wrapper component to protect routes
const PrivateRoute = ({ children }: { children: JSX.Element }) => {
  const { userId } = useAuth();
  return userId ? children : <Navigate to="/login" />;
};

function App() {
  return (
    <Router>
      <AuthProvider>
        <Header />
        <div className="container">
          <Routes>
            <Route path="/login" element={<LoginPage />} />
            <Route path="/register" element={<RegisterPage />} />
            <Route
              path="/"
              element={
                <PrivateRoute>
                  <QuizListPage />
                </PrivateRoute>
              }
            />
            <Route
              path="/quiz/:quizId"
              element={
                <PrivateRoute>
                  <QuizPreviewPage />
                </PrivateRoute>
              }
            />
            <Route
              path="/quiz/:quizId/take"
              element={
                <PrivateRoute>
                  <QuizTakingPage />
                </PrivateRoute>
              }
            />
            <Route
              path="/quiz/:quizId/results" // The new route for quiz results
              element={
                <PrivateRoute>
                  <QuizScorePage />
                </PrivateRoute>
              }
            />
          </Routes>
        </div>
      </AuthProvider>
    </Router>
  );
}

export default App;