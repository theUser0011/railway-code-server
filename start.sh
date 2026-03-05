#!/bin/bash

PORT=${PORT:-8080}

echo "=================================="
echo "Starting code-server..."
echo "=================================="

exec code-server \
  --bind-addr 0.0.0.0:$PORT \
  --auth none \
  --config /dev/null \
  /home/coder/project