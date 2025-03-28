import express from 'express';
import { getAllStudents, createStudent } from '../controllers/studentController.js';

const router = express.Router();

// Get all students
router.get('/students', getAllStudents);

// Create a new student
router.post('/students', createStudent);

export default router;
