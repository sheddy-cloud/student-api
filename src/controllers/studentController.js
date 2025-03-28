import Student from "../models/Student.js";
export const getStudents = async (req, res) => {
    try {
     
        const students = await Student.findAll();
        res.json({ students });
    } catch (error) {
        res.status(500).json({ error: "Internal Server Error" });
    }
};