import React, { useState, useEffect } from 'react';

const Courses = ({ onHeaders }) => {
  const [courses, setCourses] = useState([]);

  useEffect(() => {
    fetch('http://backend:3006/subjects')
      .then(response => {
        // Call onHeaders to extract X-Node-ID
        onHeaders(response.headers);
        return response.json();
      })
      .then(data => setCourses(data))
      .catch(err => console.error(err));
  }, [onHeaders]);

  return (
    <div>
      <h2>Courses List</h2>
      <ul>
        {courses.map(course => (
          <li key={course.id}>{course.name}</li>
        ))}
      </ul>
    </div>
  );
};

export default Courses;
