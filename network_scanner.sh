#!/bin/bash

# Check if nmap is installed
if ! command -v nmap &> /dev/null
then
    echo "nmap could not be found. Please install it and try again."
    exit 1
fi

# Function to display usage
usage() {
    echo "Usage: $0 <network-range>"
    echo "Example: $0 192.168.1.0/24"
    exit 1
}

# Check if network range is provided
if [ -z "$1" ]; then
    usage
fi

# Validate the network range format
if ! [[ $1 =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}/[0-9]{1,2}$ ]]; then
    echo "Invalid network range format."
    usage
fi

NETWORK_RANGE=$1

# Run nmap scan
echo "Scanning network range: $NETWORK_RANGE"
SCAN_RESULT=$(nmap -sP $NETWORK_RANGE)

# Display active devices
echo "Active devices:"
ACTIVE_DEVICES=$(echo "$SCAN_RESULT" | grep "Nmap scan report for" | awk '{print $5}')
echo "$ACTIVE_DEVICES"

# Run a more detailed scan on active devices
for device in $ACTIVE_DEVICES; do
    echo "Scanning device: $device"
    nmap -sV $device &
done

# Wait for all background processes to finish
wait

echo "Scan completed."
