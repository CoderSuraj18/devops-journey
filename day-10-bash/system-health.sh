
#!/usr/bin/env bash

# System Health Monitoring Automation

set -euo pipefail

# Identify script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define log directory and file
LOG_DIR="$SCRIPT_DIR/logs"
LOG_FILE="$LOG_DIR/system-health.log"

# Create log directory if missing
mkdir -p "$LOG_DIR"

# Collect system health information
{
    echo "========================================"
    echo "SYSTEM HEALTH REPORT"
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo "========================================"

    echo ""
    echo "SYSTEM UPTIME:"
    uptime

    echo ""
    echo "DISK USAGE:"
    df -h /

    echo ""
    echo "MEMORY USAGE:"
    free -h

    echo ""
    echo "REPORT COMPLETED"
    echo "========================================"
    echo ""

} >> "$LOG_FILE"

echo "System health report generated successfully."
echo "Log location: $LOG_FILE"
