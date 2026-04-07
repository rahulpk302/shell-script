#!/bin/bash

echo "###################################"

echo "CPU Load with UPTIME:"; uptime
echo "###################################"

echo -e "\nMemory Usage:"; free -m
echo "###################################"

echo -e "\nDisk Usage:"; df -h
echo "###################################"

echo -e "\nTop 5 Memory Processes:"; ps aux --sort=-%mem | head -n 5
echo "###################################"
