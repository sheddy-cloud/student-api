#!/bin/bash

LOG_FILE="/var/log/server_health.log"
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# Check CPU Usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
# Check Memory Usage
mem_usage=$(free | grep Mem | awk '{printf("%.2f"), $3/$2 * 100}')
# Check Disk Usage
disk_usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

# Check if web server is running (adjust for your service)
service_name="nginx"
service_status=$(systemctl is-active $service_name)

# Check API endpoints
students_status=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3006/students)
subjects_status=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3006/subjects)

echo "$timestamp - CPU: $cpu_usage% | Mem: $mem_usage% | Disk: $disk_usage% | Web Server: $service_status" >> $LOG_FILE

# Disk usage warning
if [ "$disk_usage" -ge 90 ]; then
  echo "$timestamp WARNING: Disk usage is above 90%" >> $LOG_FILE
fi

# Endpoint status check
if [ "$students_status" -ne 200 ]; then
  echo "$timestamp WARNING: /students endpoint returned status $students_status" >> $LOG_FILE
fi

if [ "$subjects_status" -ne 200 ]; then
  echo "$timestamp WARNING: /subjects endpoint returned status $subjects_status" >> $LOG_FILE
fi
