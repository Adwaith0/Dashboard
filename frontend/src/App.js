import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Navbar from './components/Navbar';
import DashboardPage from './pages/DashboardPage';
import PatientDetails from './components/PatientDetails';
import EmergencyContact from './components/EmergencyContact';
import Profile from './components/Profile';
import Login from './components/Login';
import LogoutPage from './pages/LogoutPage';

function App() {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={<DashboardPage />} />
        <Route path="/patient-details" element={<PatientDetails />} />
        <Route path="/emergency-contact" element={<EmergencyContact />} />
        <Route path="/profile" element={<Profile />} />
        <Route path="/login" element={<Login />} />
        <Route path="/logout" element={<LogoutPage />} />
      </Routes>
    </Router>
  );
}

export default App;
