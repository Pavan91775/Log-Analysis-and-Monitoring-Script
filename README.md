
## Description
This script monitors a specified log file for new entries and performs basic analysis by counting occurrences of specific keywords.

## Usage
1. Modify the `LOG_FILE` variable in the script to point to your log file.
2. Add any keywords you want to track to the `KEYWORDS` array.
3. Run the script using the command `bash log-monitor.sh`.
4. To stop the monitoring and generate a summary report, press `Ctrl+C`.

## Prerequisites
- Bash shell
- Access to the log file you wish to monitor

## Dependencies
No external dependencies required.


##Please replace ```/path/to/your/logfile.log``` with the actual path to the log file you want to monitor and add any specific keywords you want to track in the KEYWORDS array. To use the script, save it as ```log-monitor.sh```, give it execute permissions with ```chmod +x log-monitor.sh```, and run it with bash ```log-monitor.sh```. Press``` Ctrl+C``` to stop monitoring and generate a summary report.

