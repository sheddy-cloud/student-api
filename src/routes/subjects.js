import express from 'express';
import { getAllSubjects, createSubject } from '../controllers/subjectController.js';

const router = express.Router();

// Get all subjects
router.get('/subjects', getAllSubjects);

// Create a new subject
router.post('/subjects', createSubject);

export default router;
