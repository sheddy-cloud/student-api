import React, { useState } from 'react';
import Students from './components/Students';
import Courses from './components/Courses';

function App() {
  const [view, setView] = useState(null);
  const [nodeId, setNodeId] = useState('');

  const handleNodeHeader = (headers) => {
    const node = headers.get('X-Node-ID');
    if (node) setNodeId(node);
  };

  return (
    <div style={{ textAlign: 'center', padding: 30 }}>
      <h1>Welcome to the Student Portal</h1>
      <p>Served by: <strong>{nodeId || 'Loading...'}</strong></p>
      <button onClick={() => setView('students')}>Students</button>
      <button onClick={() => setView('courses')}>Courses</button>
      <div style={{ marginTop: 20 }}>
        {view === 'students' && <Students onHeaders={handleNodeHeader} />}
        {view === 'courses' && <Courses onHeaders={handleNodeHeader} />}
      </div>
    </div>
  );
}

export default App;
