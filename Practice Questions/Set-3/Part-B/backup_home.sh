#!/bin/bash

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="/backups/home_backup_$TIMESTAMP"
TAR_FILE="$BACKUP_DIR.tar.gz"

# Step 1: Create timestamped directory
mkdir "$BACKUP_DIR"

# Step 2: Copy /home to backup directory
cp -r /home "$BACKUP_DIR"

# Step 3: Compress the backup
tar -czf "$TAR_FILE" -C "/backups" "home_backup_$TIMESTAMP"

# Step 4: Verify backup integrity
if tar -tzf "$TAR_FILE" >/dev/null 2>&1; then
    rm -rf "$BACKUP_DIR"
    echo "Backup successful: $TAR_FILE"
else
    echo "Backup failed!" >&2
fi
