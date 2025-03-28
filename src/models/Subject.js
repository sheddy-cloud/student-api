import { connection } from "../config/database.js";

// Define the Subject model
const Subject = (connection) => {
    return connection.define("Subject", {
        id: {
            type: mysql.DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },
        subjectname: {
            type: mysql.DataTypes.STRING,
            allowNull: false,
        },
        year: {
            type: mysql.DataTypes.INTEGER,
            allowNull: false,
        }
    }, {
        timestamps: false, // Disable createdAt and updatedAt
    });
};

export default Subject;
