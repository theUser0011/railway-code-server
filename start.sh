#!/bin/bash

PORT=${PORT:-8080}
PASSWORD=${PASSWORD:-123456}

echo "Server password is: $PASSWORD"
echo "Type of server password: $(echo "$PASSWORD" | awk '{print typeof($0)}')"

echo "Enter password to access server:"
read USER_PASSWORD

echo "User entered password: $USER_PASSWORD"
echo "Type of user password: $(echo "$USER_PASSWORD" | awk '{print typeof($0)}')"

if [ "$USER_PASSWORD" = "$PASSWORD" ]; then
    echo "Password matched. Starting code-server..."
else
    echo "Password does not match."
fi

code-server \
--bind-addr 0.0.0.0:$PORT \
--auth password \
--password $PASSWORD \
/home/coder/project