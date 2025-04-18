#!/bin/bash

REPO_DIR="/var/www/student-api"
LOG_FILE="/var/log/update.log"
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

echo "$timestamp - Starting server update..." >> $LOG_FILE

# Update packages
sudo apt update && sudo apt upgrade -y >> $LOG_FILE 2>&1

# Pull latest changes
cd $REPO_DIR
git pull origin main >> $LOG_FILE 2>&1
if [ $? -ne 0 ]; then
  echo "$timestamp - ERROR: Git pull failed. Aborting update." >> $LOG_FILE
  exit 1
fi

# Restart server (adjust for your app type)
sudo systemctl restart nginx >> $LOG_FILE 2>&1
echo "$timestamp - Server updated and web server restarted." >> $LOG_FILE
