#!/bin/bash

PORT=${PORT:-8080}
PASSWORD=${PASSWORD:-123456}

code-server \
--bind-addr 0.0.0.0:$PORT \
--auth password \
--password $PASSWORD \
/home/coder/project