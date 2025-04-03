#!/bin/bash

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE="/var/log/logs_backup_$TIMESTAMP.tar.gz"

# Step 1: List all .log files
LOG_FILES=$(find /var/log -type f -name "*.log")
echo "Log files found:"
echo "$LOG_FILES"

# Step 2: Archive log files
tar -czf "$ARCHIVE" $LOG_FILES

# Step 3: Truncate original log files
for file in $LOG_FILES; do
    > "$file"
done

# Step 4: Confirm operation
if [ -f "$ARCHIVE" ]; then
    echo "Logs archived to $ARCHIVE and original logs truncated."
else
    echo "Log archiving failed!" >&2
fi
