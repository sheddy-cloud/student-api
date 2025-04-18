#!/bin/bash
LOG_FILE="/var/log/update.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
REPO_DIR="/var/www/student-api"

echo "[$TIMESTAMP] Update started" >> $LOG_FILE

# Update system packages
sudo apt update && sudo apt upgrade -y >> $LOG_FILE

# Pull latest from Git
cd $REPO_DIR
git pull origin main
if [ $? -ne 0 ]; then
  echo "[$TIMESTAMP] Git pull failed. Update aborted." >> $LOG_FILE
  exit 1
fi

# Restart web server
sudo systemctl restart nginx
echo "[$TIMESTAMP] Server restarted successfully" >> $LOG_FILE
echo "-------------------------------" >> $LOG_FILE
