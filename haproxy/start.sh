#!/bin/bash
echo "Starting rsyslog..."
rsyslogd -n &

echo "Starting HAProxy..."
haproxy -f /usr/local/etc/haproxy/haproxy.cfg

# Keep container alive
sleep infinity
