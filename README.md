# student-api// README.md

# API Endpoints
1. GET /students

    Description: Returns a list of all students.

    Full URL: http://56.228.13.82/students

2. GET /subjects

    Description: Returns a list of all subjects.

    Full URL:http://51.21.191.240/subjects

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

To automate script execution, we add the following entries using:

crontab -e

🔁 Cron Schedule:
Script	Frequency	Cron Expression
health_check.sh	Every 6 hours	0 */6 * * * /student-api/bash_scripts/health_check.sh
backup_api.sh	Daily at 2 AM	0 2 * * * /student-api/bash_scripts/backup_api.sh
update_server.sh	Every 3 days at 3 AM	0 3 */3 * * /student-api/bash_scripts/update_server.sh

   
4️⃣ Sample Logs

Checking the log files:

sudo cat /var/log/server_health.log
sudo cat /var/log/backup.log
sudo cat /var/log/update.log

📌 Notes

    Scripts are built for AWS EC2 (Free Tier) using t2.micro/t3.micro.

    Tested with Ubuntu 22.04.

    Use environment-safe practices for credentials in production.

👨‍💻 Author

    Name: Shedrack Massaburi

    GitHub: sheddy-cloud

    University: University of Dodoma (UDOM)
