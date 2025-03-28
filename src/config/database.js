import { Sequelize } from "sequelize";
import dotenv from "dotenv";

dotenv.config();


export const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASSWORD, {
    host: process.env.DB_HOST,
    dialect: "mysql",
    logging: false,
});
// sequelize.sync({ force: true }) // This will drop and recreate tables
// .then(() => console.log("Tables have been recreated"))
// .catch(err => console.error("Error recreating tables", err));

