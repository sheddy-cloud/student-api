import express from "express";
import cors from "cors";
import studentRoutes from "./routes/students.js";
import subjectRoutes from "./routes/subjects.js";

const app = express();
app.use(cors());
app.use(express.json());

app.use("/students", studentRoutes);
app.use("/subjects", subjectRoutes);

export default app;
