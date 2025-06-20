#!/bin/bash

# === User Input Directory ===
SOURCE_DIR="/home/nikhil/Documents"
BACKUP_DIR="/home/nikhil/backup_logs"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# === Create Backup Directory if not exists ===
mkdir -p "$BACKUP_DIR"

# === Create Backup ===
tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2>> "$BACKUP_DIR/error_log.txt"

# === Log Backup ===
echo "[$(date)] Backup created: $BACKUP_FILE" >> "$BACKUP_DIR/backup_log.txt"
