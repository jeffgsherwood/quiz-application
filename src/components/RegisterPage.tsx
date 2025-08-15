// src/components/RegisterPage.tsx
import React, { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import axios from 'axios';
import './Form.css';

const RegisterPage: React.FC = () => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [email, setEmail] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);
  const navigate = useNavigate();

  const handleRegister = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);
    setSuccess(null);

    try {
      // This will be a POST request to your backend's user registration endpoint
      const response = await axios.post('/api/users/register', {
        username,
        password,
        email,
      });

      if (response.status === 201) { // 201 Created is a good status code for a successful registration
        setSuccess('Registration successful! You can now log in.');
        // Automatically redirect to the login page after a delay
        setTimeout(() => {
          navigate('/login');
        }, 2000);
      }
    } catch (err) {
      if (axios.isAxiosError(err) && err.response) {
        // The backend sends a specific error message, which we can display
        setError(err.response.data || 'Registration failed. Please try again.');
      } else {
        setError('An unexpected error occurred.');
      }
    }
  };

  return (
    <div className="register-container">
      <h2>Register</h2>
      <form onSubmit={handleRegister}>
        <div className="form-group">
          <label htmlFor="username">Username:</label>
          <input
            type="text"
            id="username"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            required
          />
        </div>
        <div className="form-group">
          <label htmlFor="email">Email (Optional):</label>
          <input
            type="email"
            id="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
          />
        </div>
        <div className="form-group">
          <label htmlFor="password">Password:</label>
          <input
            type="password"
            id="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>
        {error && <div className="error-message">{error}</div>}
        {success && <div className="success-message">{success}</div>}
        <button type="submit">Register</button>
      </form>
      <p className="login-link">
        Already have an account? <Link to="/login">Log in here</Link>
      </p>
    </div>
  );
};

export default RegisterPage;