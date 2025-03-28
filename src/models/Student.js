import { connection } from "../config/database.js";

// Define the Student model
const Student = (connection) => {
    return connection.define("Student", {
        id: {
            type: mysql.DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },
        Studentname: {
            type: mysql.DataTypes.STRING,
            allowNull: false,
        },
        Program: {
            type: mysql.DataTypes.STRING,
            allowNull: false,
        }
    }, {
        timestamps: false, // Disable createdAt and updatedAt
    });
};

export default Student;
