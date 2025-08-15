// src/components/Header.tsx
import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';

const Header: React.FC = () => {
  const { userId, logout } = useAuth();
  const navigate = useNavigate();

  const handleLogout = () => {
    logout();
    navigate('/login');
  };

  return (
    <header className="main-header">
      <nav>
        <Link to="/" className="site-title">Ghosted Genius Quizzes</Link>
        <div className="nav-links">
          {userId ? (
            // Show a welcome message and logout button if the user is logged in
            <>
              <span className="welcome-message">Welcome, User {userId}!</span>
              <button onClick={handleLogout} className="logout-btn">Logout</button>
            </>
          ) : (
            // Show login/register links if the user is not logged in
            <>
              <Link to="/login" className="nav-link">Login</Link>
              <Link to="/register" className="nav-link">Register</Link>
            </>
          )}
        </div>
      </nav>
    </header>
  );
};

export default Header;