#!/bin/bash

# Путь к персональному лог-файлу относительно папки scripts/
LOG_FILE="../logs/Chsherbina_Nikita_system_report.log"

{
  echo "=========================================="
  echo "Student: Chsherbina Nikita"
  echo "Data and Time: $(date)"
  echo "Username: $(whoami)"
  echo "OS and Kernel version: $(uname -sr)"
  echo "CPU info: $(lscpu | grep 'Model name' | head -n 1)"
  echo "Memory Info:"
  free -h
  echo "Disk Usage and Free Space:"
  df -h /
  echo "=========================================="
} | tee -a "$LOG_FILE"