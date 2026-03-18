#!/bin/bash

echo "===== SERVER STATUS ====="

echo ""
echo "🕒 Uptime:"
uptime

echo ""
echo "💾 Disk usage:"
df -h

echo ""
echo "🧠 Memory usage:"
free -m

echo ""
echo "⚙️ CPU load:"
top -bn1 | grep "load average"

echo ""
echo "🌐 Nginx status:"
systemctl is-active nginx
