import React from 'react';
import Calendar from 'react-calendar';
import 'react-calendar/dist/Calendar.css';

const CalendarDashboard = () => {
  const [date, setDate] = React.useState(new Date());

  return (
    <div style={{ textAlign: 'center', marginTop: '20px' }}>
      <h3>Appointments Calendar</h3>
      <Calendar
        onChange={setDate}
        value={date}
      />
      <p>Selected Date: {date.toDateString()}</p>
    </div>
  );
};

export default CalendarDashboard;
