#!/bin/bash

#Create a directory called "Backup" in Documents folder
mkdir ~/Documents/Backup

#Copy all .c files into the folder
cp *.c ~/Documents/Backup/

#'cd' into Documents folder
cd ~/Documents

#Create a tar.gz file using tar command
tar -czf Backup.tar.gz Backup/

#Delete the "Backup" folderi
rm -rf ~/Documents/Backup
