import { connection } from "../config/database.js";
import Subject from "../models/Subject.js";

// Get all subjects
export const getAllSubjects = (req, res) => {
    const query = "SELECT * FROM Subject";
    
    connection.query(query, (err, results) => {
        if (err) {
            return res.status(500).json({ error: 'Error fetching subjects' });
        }
        return res.status(200).json(results);
    });
};

// Create a new subject
export const createSubject = (req, res) => {
    const { subjectname, year } = req.body;
    const query = "INSERT INTO Subject (subjectname, year) VALUES (?, ?)";
    
    connection.execute(query, [subjectname, year], (err, results) => {
        if (err) {
            return res.status(500).json({ error: 'Error inserting subject' });
        }
        return res.status(201).json({ message: 'Subject created', subjectId: results.insertId });
    });
};
