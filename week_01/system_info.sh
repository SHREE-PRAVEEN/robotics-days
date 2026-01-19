#!/bin/bash
echo "System Information"
echo "=================="
echo "" 

echo "Hostname: $(hostname)"
echo "Operating System: $(uname -o)"
echo "Kernel Version: $(uname -r)"
echo "Architecture: $(uname -m)"
echo "Uptime: $(uptime -p)"
echo "Current Date and Time: $(date)"
echo ""         

echo "Disk Usage:"
df -h | awk 'NR==1 || /^\/dev\// {print}'
echo ""
echo "Memory Usage:"
free -h
echo ""
echo "Top 5 Processes by Memory Usage:"
ps aux --sort=-%mem | head -n 6         
echo "" 
echo "Network Configuration:"
ip addr show    
echo ""echo "Open Network Connections:"
ss -tuln | head -n 10                                                           

echo ""
echo "Environment Variables:"
printenv | head -n 10       
echo ""echo "Logged-in Users:"
who | head -n 5
echo ""echo "End of System Information"         

echo "========================="



