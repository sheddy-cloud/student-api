#!/bin/bash

echo "$(date +%F_%T) - Starting backup..." >> /var/log/backup.log

# Create backups folder if it doesn't exist
mkdir -p /home/ubuntu/backups

# Backup API project folder
tar -czf /home/ubuntu/backups/api_backup_$(date +%F).tar.gz /home/ubuntu/student-api
if [ $? -eq 0 ]; then
    echo "$(date +%F_%T) - API project backup successful." >> /var/log/backup.log
else
    echo "$(date +%F_%T) - API project backup FAILED!" >> /var/log/backup.log
fi

# Backup MySQL database
mysqldump -u root -p'SHEDRACKs.677' student > /home/ubuntu/backups/db_backup_$(date +%F).sql
if [ $? -eq 0 ]; then
    echo "$(date +%F_%T) - Database backup successful." >> /var/log/backup.log
else
    echo "$(date +%F_%T) - Database backup FAILED!" >> /var/log/backup.log
fi

# Delete backups older than 7 days
find /home/ubuntu/backups/* -mtime +7 -exec rm {} \;
echo "$(date +%F_%T) - Old backups cleaned up." >> /var/log/backup.log
#!/bin/bash

echo "$(date +%F_%T) - Starting backup..." >> /var/log/backup.log

# Create backups folder if it doesn't exist
mkdir -p /home/ubuntu/backups

# Backup API project folder
tar -czf /home/ubuntu/backups/api_backup_$(date +%F).tar.gz /home/ubuntu/student-api
if [ $? -eq 0 ]; then
    echo "$(date +%F_%T) - API project backup successful." >> /var/log/backup.log
else
    echo "$(date +%F_%T) - API project backup FAILED!" >> /var/log/backup.log
fi

# Backup MySQL database
mysqldump -u root -p'SHEDRACKs.677' student > /home/ubuntu/backups/db_backup_$(date +%F).sql
if [ $? -eq 0 ]; then
    echo "$(date +%F_%T) - Database backup successful." >> /var/log/backup.log
else
    echo "$(date +%F_%T) - Database backup FAILED!" >> /var/log/backup.log
fi

# Delete backups older than 7 days
find /home/ubuntu/backups/* -mtime +7 -exec rm {} \;
echo "$(date +%F_%T) - Old backups cleaned up." >> /var/log/backup.log
