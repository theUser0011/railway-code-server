#!/bin/bash

PORT=${PORT:-8080}

echo "Starting code-server without authentication..."
echo "Server running on port: $PORT"

code-server \
--bind-addr 0.0.0.0:$PORT \
--auth none \
/home/coder/project