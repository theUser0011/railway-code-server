#!/bin/bash

PORT=${PORT:-8080}

echo "Removing default code-server config..."
rm -f /root/.config/code-server/config.yaml

echo "Starting code-server with no authentication..."

code-server \
--bind-addr 0.0.0.0:$PORT \
--auth none \
/home/coder/project