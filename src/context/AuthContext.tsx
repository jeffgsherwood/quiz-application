// src/context/AuthContext.tsx
import React, { createContext, useState, useContext, useEffect, ReactNode } from 'react';

// 1. Define the shape of our context data
interface AuthContextType {
  userId: number | null;
  login: (id: number) => void;
  logout: () => void;
}

// 2. Create the context
const AuthContext = createContext<AuthContextType | undefined>(undefined);

// 3. Create a provider component that will wrap our application
interface AuthProviderProps {
  children: ReactNode;
}

export const AuthProvider: React.FC<AuthProviderProps> = ({ children }) => {
  // Use a function to initialize the state from localStorage
  const [userId, setUserId] = useState<number | null>(() => {
    const storedUserId = localStorage.getItem('userId');
    return storedUserId ? parseInt(storedUserId) : null;
  });

  // Use a useEffect hook to update localStorage whenever userId changes
  useEffect(() => {
    if (userId) {
      localStorage.setItem('userId', userId.toString());
    } else {
      localStorage.removeItem('userId');
    }
  }, [userId]);

  const login = (id: number) => {
    setUserId(id);
  };

  const logout = () => {
    setUserId(null);
  };

  return (
    <AuthContext.Provider value={{ userId, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};

// 4. Create a custom hook for easy access to the context
export const useAuth = () => {
  const context = useContext(AuthContext);
  if (context === undefined) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
};