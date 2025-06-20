#!/bin/bash

REPORT_FILE="/home/nikhil/monitor_report.txt"

# === Fetch System Usage Info ===
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
RAM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

# === Print to file ===
echo "[$(date)] CPU: $CPU_USAGE% | RAM: $RAM_USAGE% | Disk: $DISK_USAGE%" >> "$REPORT_FILE"

# === Optional Alerts ===
if (( $(echo "$CPU_USAGE > 80" | bc -l) )); then
    echo "High CPU usage detected: $CPU_USAGE%" >> "$REPORT_FILE"
fi
