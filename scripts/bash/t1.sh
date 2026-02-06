#!/bin/bash
FILE=$1
LIMIT=1048576

if [ -f "$FILE" ]; then
    SIZE=$(stat -c%s "$FILE")
    if [ "$SIZE" -gt "$LIMIT" ]; then
        echo "Warning: File is too large ($SIZE bytes)"
    else
        echo "File size is within limits ($SIZE bytes)."
    fi
else
    echo "Error: File does not exist."
fi