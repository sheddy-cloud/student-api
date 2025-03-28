import { sequelize } from './src/config/database.js';

// You can check if the connection to the database works
sequelize.authenticate()
  .then(() => console.log('Database connection established successfully.'))
  .catch(err => console.error('Unable to connect to the database:', err));
