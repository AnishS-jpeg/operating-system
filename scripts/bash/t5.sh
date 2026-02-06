#!/bin/bash
echo "--- SYSTEM HEALTH REPORT ---"
echo "Date/Time: $(date)"
echo "Hostname:  $(hostname)"
echo "User:      $USER"
echo "Disk Usage (Root):"
df -h / | awk 'NR==2 {print "Total: " $2 ", Used: " $3 ", Free: " $4}'