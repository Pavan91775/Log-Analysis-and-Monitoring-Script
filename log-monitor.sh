Bash Shell Scripting



#!/bin/bash
# log-monitor.sh
# Script to monitor and analyze log file entries

# Variables
LOG_FILE="/path/to/your/logfile.log" # Replace with the path to your log file
KEYWORDS=("error" "fail" "warning,HTTP status") # Add keywords to track

# Function to monitor new log entries
monitor_logs() {
  tail -f "$LOG_FILE" | while read LINE; do
    echo "$LINE"
    analyze_log "$LINE"
  done
}

# Function to analyze log entries
analyze_log() {
  local log_entry=$1
  for keyword in "${KEYWORDS[@]}"; do
    echo "$log_entry" | grep -i "$keyword" &> /dev/null
    if [ $? -eq 0 ]; then
      echo "Keyword found: $keyword"
      # Increment the keyword occurrence count
      ((count_$keyword++))
    fi
  done
}

# Function to generate summary report
generate_report() {
  echo "Summary Report:"
  for keyword in "${KEYWORDS[@]}"; do
    local count_var="count_$keyword"
    echo "$keyword: ${!count_var}"
  done
}

# Trap Ctrl+C signal to stop the monitoring loop and generate report
trap 'generate_report; exit 0' SIGINT

# Main execution
echo "Monitoring log file: $LOG_FILE"
echo "Press Ctrl+C to stop and generate summary report"
monitor_logs

# End of script

