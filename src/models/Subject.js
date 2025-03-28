import { DataTypes } from "sequelize";
import { sequelize } from "../config/database.js";

const Subject = sequelize.define("Subject", {
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    subjectname: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    year: {
        type: DataTypes.INTEGER,
        allowNull: false,
    }
    
},
{
    timestamps: false // Disable createdAt and updatedAt
});


export default Subject;