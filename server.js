import app from "./src/app.js";
import dotenv from "dotenv";
import { sequelize } from "./src/config/database.js";

dotenv.config();

const PORT = process.env.PORT;

sequelize.sync().then(() => {
    console.log("Database connected successfully");
    app.listen(PORT, () => {
        console.log(`Server is running on port ${PORT}`);
    });
}).catch(err => {
    console.error("Database connection failed: ", err);
});