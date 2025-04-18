#!/bin/bash

API_DIR="/var/www/student-api"
BACKUP_DIR="/home/ubuntu/backups"
DB_NAME="student"
DB_USER="root"
TIMESTAMP=$(date +%F)
LOG_FILE="/var/log/backup.log"

mkdir -p $BACKUP_DIR

echo "$(date '+%Y-%m-%d %H:%M:%S') - Starting backup..." >> $LOG_FILE

# Backup API code
tar -czf $BACKUP_DIR/api_backup_$TIMESTAMP.tar.gz $API_DIR 2>> $LOG_FILE

# Backup MySQL DB
mysqldump -u $DB_USER $DB_NAME > $BACKUP_DIR/db_backup_$TIMESTAMP.sql 2>> $LOG_FILE

# Delete backups older than 7 days
find $BACKUP_DIR -type f -mtime +7 -exec rm {} \;

if [ $? -eq 0 ]; then
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup successful." >> $LOG_FILE
else
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup failed!" >> $LOG_FILE
fi
