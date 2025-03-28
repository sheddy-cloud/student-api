import Subject from "../models/Subject.js";
export const getSubjects = async (req, res) => {
    try {
        const subjects = await Subject.findAll();
        res.json({ subjects });
    } catch (error) {
        res.status(500).json({ error: "Internal Server Error" });
    }
};