#!/bin/bash

mkdir /var/log/backups
tar -czf /var/log/backups/backup_$(date +%Y%m%d).tar.gz /var/log/*.log
ls /var/log/backups/
