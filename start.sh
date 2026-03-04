#!/bin/bash

PORT=${PORT:-8080}

echo "================================="
echo "Container starting..."
echo "Current user: $(whoami)"
echo "================================="

CONFIG_FILE="/root/.config/code-server/config.yaml"

echo "Checking if config exists..."

if [ -f "$CONFIG_FILE" ]; then
    echo "Config already exists:"
    echo "---------------------------------"
    cat "$CONFIG_FILE"
    echo "---------------------------------"
else
    echo "Config does NOT exist yet."
fi

echo "Listing config directory:"
ls -la /root/.config/code-server || true

echo "================================="
echo "Starting code-server..."
echo "================================="

exec code-server \
  --bind-addr 0.0.0.0:$PORT \
  /home/coder/project