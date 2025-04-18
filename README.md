# student-api// README.md

# Student API
This is a simple API that provides:
- A list of students enrolled in Software Engineering.
- Subjects from Year 1 to Year 4 in Software Engineering.

## Setup
1. Clone the repository:
   ```sh
   git clone https://github.com/sheddy-cloud/student-api
   cd student-api

   ```
2. Install dependencies:
   ```sh
   npm install
   npm install sequelize mysql2
   npm install express mysql2 dotenv cors
   ```
3. Create a `.env` file with the following variables:
   ```sh
   DB_NAME=
   DB_USER=
   DB_PASSWORD=
   DB_HOST=
   ```
4. Run the server:
   ```sh
   npm start
   
   ```

## API Endpoints
1. GET /students

    Description: Returns a list of all students.

    Full URL: http://51.21.191.240/students

2. GET /subjects

    Description: Returns a list of all subjects.

    Full URL: http://51.21.191.240/subjects