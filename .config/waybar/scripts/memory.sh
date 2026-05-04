#!/bin/bash
used=$(free -m | awk '/Mem:/ { print $3 }')
echo "$used MiB"
