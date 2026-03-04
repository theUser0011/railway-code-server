#!/bin/bash

PORT=${PORT:-8080}

echo "=================================="
echo "Checking code-server config file"
echo "=================================="

CONFIG_PATH="/root/.config/code-server/config.yaml"

if [ -f "$CONFIG_PATH" ]; then
    echo "Config file found at: $CONFIG_PATH"
    echo "----- CONFIG CONTENT START -----"
    cat $CONFIG_PATH
    echo "----- CONFIG CONTENT END -----"
else
    echo "Config file does not exist yet."
fi

echo "=================================="
echo "Starting code-server..."
echo "=================================="

# code-server will use the $PASSWORD variable from Railway automatically
exec code-server \
  --bind-addr 0.0.0.0:$PORT \
  --auth password \
  /home/coder/project