#!/bin/bash

# Variables
PROCESS_NAME="$1"   # Name of the process to monitor
RESTART_CMD="$2"    # Command to restart the process

if [ -z "$PROCESS_NAME" ] || [ -z "$RESTART_CMD" ]; then
    echo "Usage: $0 <process_name> <restart_command>"
    exit 1
fi

# Function to check if the process is running
check_process() {
    pgrep "$PROCESS_NAME" > /dev/null 2>&1
}

# Function to restart the process
restart_process() {
    echo "Process '$PROCESS_NAME' stopped. Restarting..."
    $RESTART_CMD
    if [ $? -eq 0 ]; then
        echo "Process restarted successfully."
    else
        echo "Failed to restart the process."
    fi
}

# Monitoring loop
while true; do
    if ! check_process; then
        restart_process
    fi
    sleep 5  # Check every 5 seconds
done
