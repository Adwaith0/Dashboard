import React, { useEffect } from 'react';
import { clearToken } from '../utils/auth';
import { useNavigate } from 'react-router-dom';

const LogoutPage = () => {
  const navigate = useNavigate();

  useEffect(() => {
    clearToken();
    setTimeout(() => {
      navigate('/login');
    }, 2000); // After 2 seconds
  }, [navigate]);

  return (
    <div>
      <h2>You have been logged out successfully!</h2>
    </div>
  );
};

export default LogoutPage;
