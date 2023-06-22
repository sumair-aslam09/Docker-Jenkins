#!/bin/bash

# Check if both containers exist in the network
if docker network inspect nginx_mynetwork | grep -e "nginx_nginx_1" -e "nginx_mysql_1" >/dev/null 2>&1; then
    echo "Connection established. Both containers exist in the network."
else
    echo "Connection not established. One or both containers do not exist in the network."
fi
