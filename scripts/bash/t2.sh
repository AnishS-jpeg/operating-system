#!/bin/bash
echo "Top 5 Memory Hogs:"
ps -eo comm,pid,%mem --sort=-%mem | head -n 6