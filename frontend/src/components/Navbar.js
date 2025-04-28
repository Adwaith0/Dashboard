import React from 'react';
import { Link } from 'react-router-dom';
import './Navbar.css';  // Optional if you want separate navbar styling

const Navbar = () => {
  return (
    <nav className="navbar">
      <h2>Health ID Dashboard</h2>
      <ul>
        <li><Link to="/">Dashboard</Link></li>
        <li><Link to="/patient-details">Patient Details</Link></li>
        <li><Link to="/emergency-contact">Emergency Contact</Link></li>
        <li><Link to="/profile">Profile</Link></li>
        <li><Link to="/login">Login</Link></li>
        <li><Link to="/logout">Logout</Link></li>
      </ul>
    </nav>
  );
};

export default Navbar;
