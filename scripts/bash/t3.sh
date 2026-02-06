#!/bin/bash
# Create dummy file if it doesn't exist
echo -e "Error: Login failed\nSuccess\nError: Disk full\nWarning: High temp" > server.log

COUNT=$(grep -c "Error" server.log)
echo "Total error lines found: $COUNT"