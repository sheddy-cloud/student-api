import { connection } from "../config/database.js";
import Student from "../models/Student.js";

// Get all students
export const getAllStudents = (req, res) => {
    const query = "SELECT * FROM Student";
    
    connection.query(query, (err, results) => {
        if (err) {
            return res.status(500).json({ error: 'Error fetching students' });
        }
        return res.status(200).json(results);
    });
};

// Create a new student
export const createStudent = (req, res) => {
    const { Studentname, Program } = req.body;
    const query = "INSERT INTO Student (Studentname, Program) VALUES (?, ?)";
    
    connection.execute(query, [Studentname, Program], (err, results) => {
        if (err) {
            return res.status(500).json({ error: 'Error inserting student' });
        }
        return res.status(201).json({ message: 'Student created', studentId: results.insertId });
    });
};
