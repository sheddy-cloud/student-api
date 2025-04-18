#!/bin/bash

LOG_FILE="/var/log/server_health.log"
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
mem_usage=$(free | grep Mem | awk '{printf("%.2f"), $3/$2 * 100}')
disk_usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

# Check if web server is running
service_name="nginx"
service_status=$(systemctl is-active $service_name)

# Check API endpoints using your public IP
students_status=$(curl -s -o /dev/null -w "%{http_code}" http://51.21.191.240:3006/students)
subjects_status=$(curl -s -o /dev/null -w "%{http_code}" http://51.21.191.240:3006/subjects)

echo "$timestamp - CPU: $cpu_usage% | Mem: $mem_usage% | Disk: $disk_usage% | Web Server: $service_status" >> $LOG_FILE

if [ "$disk_usage" -ge 90 ]; then
  echo "$timestamp WARNING: Disk usage is above 90%" >> $LOG_FILE
fi

if [ "$students_status" -ne 200 ]; then
  echo "$timestamp WARNING: /students endpoint returned status $students_status" >> $LOG_FILE
fi

if [ "$subjects_status" -ne 200 ]; then
  echo "$timestamp WARNING: /subjects endpoint returned status $subjects_status" >> $LOG_FILE
fi
