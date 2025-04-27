# student-api// README.md

# API Endpoints
1. GET /students

    Description: Returns a list of all students.

    Full URL: http://13.60.224.231/students

2. GET /subjects

    Description: Returns a list of all subjects.

    Full URL:http://13.60.224.231/subjects

 # AWS Ubuntu Server Management – Bash Scripts

This project contains three Bash scripts designed to automate the management of an AWS Ubuntu EC2 server hosting a Node.js API and MySQL database. These scripts help monitor system health, back up project data, and automate server updates.


---

## 0️⃣ Backup Schemes

### 1. **Full Backup**
- **Description**: A full backup copies all data and files, creating a snapshot of everything on the system at a given time.
- **Execution**: Backs up all files and data every time.
- **Advantages**:
   Simple to execute and restore.
   Ensures complete redundancy of all data.
- **Disadvantages**: Time-consuming, large storage required.

### 2. **Incremental Backup**
- **Execution**: Backs up only changes made since the last backup (full or incremental).
- **Advantages**: Fast and space-efficient.
- **Disadvantages**: Slower restore (requires the last full backup + all incremental ones).

### 3. **Differential Backup**
- **Execution**: Backs up all changes made since the last full backup.
- **Advantages**: Faster to restore than incremental.
- **Disadvantages**: Takes up more space than incremental and grows larger each day.

---

## 1️⃣ Bash Scripts

### 1.1 `health_check.sh`
- **Purpose**: Monitor server health and API availability.
- **Checks**:
  - CPU, memory, and disk usage.
  - Web server (e.g., Nginx or Node.js) status.
  - API endpoints: `/students` and `/subjects` (on port `3006`).
- **Logs**:
  - Results are logged to `/var/log/server_health.log`.
  - Warnings for CPU/memory/disk thresholds and API errors are included.

### 1.2 `backup_api.sh`
- **Purpose**: Create a backup of the API project and MySQL database.
- **Features**:
  - Compresses `/home/ubuntu/student-api` folder to `/home/ubuntu/backups/`.
  - Dumps the `student` database (MySQL) using `mysqldump`.
  - Automatically deletes backups older than 7 days.
  - Logs results to `/var/log/backup.log`.

### 1.3 `update_server.sh`
- **Purpose**: Update system packages and deploy latest API changes.
- **Steps**:
  - Runs `apt update && apt upgrade -y`.
  - Pulls latest code from GitHub repo.
  - Restarts the server to apply updates.
  - Logs progress to `/var/log/update.log`.

---

## 2️⃣ Setup Instructions

### ✅ Step 1: Make Scripts Executable

```bash
cd bash_scripts
chmod +x health_check.sh backup_api.sh update_server.sh

✅ Step 2: Install Dependencies

Ensure these tools are installed:

sudo apt install curl git mysql-client

3️⃣ Cron Job Scheduling

To automate script execution, add the following entries using:

crontab -e

🔁 Cron Schedule:
Script	Frequency	Cron Expression
health_check.sh	Every 6 hours	0 */6 * * * /path/to/health_check.sh
backup_api.sh	Daily at 2 AM	0 2 * * * /path/to/backup_api.sh
update_server.sh	Every 3 days at 3 AM	0 3 */3 * * /path/to/update_server.sh

    Replace /path/to/ with the actual absolute path to your scripts, e.g., /home/ubuntu/student-api/bash_scripts/

4️⃣ Sample Logs

Check log files:

sudo cat /var/log/server_health.log
sudo cat /var/log/backup.log
sudo cat /var/log/update.log

📌 Notes

    Scripts are built for AWS EC2 (Free Tier) using t2.micro/t3.micro.

    Tested with Ubuntu 22.04.

    Use environment-safe practices for credentials in production.


🐳 Dockerized Deployment
🚀 Steps to Build and Run
1. Clone the Repository

git clone https://github.com/sheddy-cloud/student-api.git
cd student-api

2. Build Docker Image

sudo docker build -t student-api .

3. Run Using Docker Compose

sudo docker compose up -d

    This will start both:

        API Container (Node.js app)

        Database Container (MySQL)

⚙️ Environment Variables

These are set inside docker-compose.yml:
Key	Value
DB_HOST
DB_USER
DB_PASSWORD
DB_NAME
DB_PORT




👨‍💻 Author

    Name: Shedrack Massaburi

    GitHub: sheddy-cloud

    University: University of Dodoma (UDOM)
