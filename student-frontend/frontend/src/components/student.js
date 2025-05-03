import React, { useState, useEffect } from 'react';

const Students = ({ onHeaders }) => {
  const [students, setStudents] = useState([]);

  useEffect(() => {
    fetch('http://backend:3006/students')
      .then(response => {
        // Call onHeaders to extract X-Node-ID
        onHeaders(response.headers);
        return response.json();
      })
      .then(data => setStudents(data))
      .catch(err => console.error(err));
  }, [onHeaders]);

  return (
    <div>
      <h2>Students List</h2>
      <ul>
        {students.map(student => (
          <li key={student.id}>{student.name} - {student.program}</li>
        ))}
      </ul>
    </div>
  );
};

export default Students;
