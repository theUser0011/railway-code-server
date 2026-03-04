#!/bin/bash

PORT=${PORT:-8080}

echo "=================================="
echo "Starting code-server..."
echo "=================================="

# Use --auth none to disable the password prompt.
# We remove the "FROM codercom..." text as that belongs in the Dockerfile.
exec code-server \
  --bind-addr 0.0.0.0:$PORT \
  --auth none \
  /home/coder/project