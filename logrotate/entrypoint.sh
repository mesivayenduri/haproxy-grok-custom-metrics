#!/bin/bash
echo "Starting logrotate..."
while true; do
  logrotate -f /etc/logrotate.conf
  sleep 120  # Adjust the sleep time as needed
    # For example, sleep for 1 hour (3600 seconds)
    # You can also use a shorter interval for testing
    # sleep 60  # Sleep for 1 minute (60 seconds) for testing
    # You can adjust the sleep time based on your requirements
done
