#!/bin/bash

# Create the /root/admin directory
mkdir -p /root/admin

# Clone the Git repository into the /root/admin directory
git clone https://github.com/MrCache1209/Unix-Patching.git /root/admin

# Change the permissions of the update.sh file
mv /root/admin/Unix-Patching/update.sh ..
chmod 755 /root/admin/update.sh

# Create the log directory
mkdir /root/admin/log

# Add the new cron job to the crontab
CRON_ENTRY="00 00 */8,*/9,*/10,*/11,*/12,*/13,*/14 * 4 /root/admin/update.sh 2>&1 >> /root/admin/log/update.log"
# Check if the entry already exists to avoid duplication
crontab -l | grep -F "$CRON_ENTRY" || (crontab -l; echo "$CRON_ENTRY") | crontab -
