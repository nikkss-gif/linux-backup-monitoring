# 🔄 Automated Linux Backup & Monitoring System

This project demonstrates a real-world use case in DevOps: automating file backups and system health monitoring using **Linux**, **Shell Scripting**, **Cron Jobs**, and **Git/GitHub**.

---

## 📁 Features

- 📦 **Backup Script**: Compresses and archives a specified folder with a timestamp.
- 🔍 **Monitoring Script**: Logs CPU, RAM, and Disk usage hourly.
- 🕓 **Cron Jobs**: Automates both scripts to run at scheduled times.
- 🧾 **Log Files**: Maintains logs for backups and alerts.

---

## 🚀 Technologies Used

- ✅ Bash / Shell Scripting  
- ✅ Linux (Tested on Ubuntu)  
- ✅ Cron Scheduler  
- ✅ Git & GitHub  

---

## 📂 Project Structure

linux-backup-monitoring/
│
├── backup-script.sh # Backup logic
├── monitor_script.sh # System monitoring logic
├── .gitignore # Ignoring large/log files
├── README.md # This file
├── backup_logs/ # Stores backup logs and archives
└── monitor_report.txt # Monitoring output


---

## 🛠️ Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/nikkss-gif/linux-backup-monitoring.git
   cd linux-backup-monitoring
