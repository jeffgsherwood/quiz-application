import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  // Configure the development server
  server: {
    // Proxy configuration for API requests
    // This tells Vite to redirect requests that start with '/api'
    // from the frontend dev server (e.g., http://localhost:5173)
    // to your backend server (e.g., http://localhost:8080).
    proxy: {
      '/api': {
        target: 'http://localhost:8080', // The URL of your Spring Boot backend
        changeOrigin: true, // Needed for CORS to work correctly
        rewrite: (path) => path.replace(/^\/api/, '/api'), // Rewrite the path (this part might not be strictly necessary, but it's good practice)
      },
    },
  },
});
