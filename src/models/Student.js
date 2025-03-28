// src/models/Student.js

import { DataTypes } from "sequelize";
import { sequelize } from "../config/database.js";

const Student = sequelize.define("Student", {
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    studentname: { 
        type: DataTypes.STRING,
        allowNull: false,
    },
    program: {
        type: DataTypes.STRING,
        allowNull: false,
    }
}, {
    timestamps: false // Disable createdAt and updatedAt
});

export default Student;
