import mysql from 'mysql2';

// Create a connection to the database
const connection = mysql.createConnection({
    host: process.env.DB_HOST, // RDS endpoint
    user: process.env.DB_USER, // DB user (e.g., admin)
    password: process.env.DB_PASSWORD, // DB password
    database: process.env.DB_NAME, // Database name
});

// Connect to the database
connection.connect((err) => {
    if (err) {
        console.error('Error connecting to the database:', err);
    } else {
        console.log('Connected to the database');
    }
});

export { connection };
