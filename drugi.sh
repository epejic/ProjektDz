#!/bin/bash
sudo find /home/emanuel/ -mmin $1 -type f -print0  > /home/TempFile
cat /home/TempFile
cat /home/TempFile | tar --null -cf /home/emanuel/Documents/DZ_1/backup.tgz -T -
rm /home/TempFile
