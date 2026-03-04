#!/bin/bash

PASSWORD=${PASSWORD:-123456}

echo "Starting code-server..."

code-server \
--bind-addr 0.0.0.0:8080 \
--auth password \
--password $PASSWORD \
/home/coder/project