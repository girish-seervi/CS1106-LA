#!/bin/bash

mkdir -p ~/Documents/Backup
cp *.c ~/Documents/Backup/
cd ~/Documents
tar -czf Backup.tar.gz Backup/
rm -rf ~/Documents/Backup
