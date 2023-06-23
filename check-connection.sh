#!/bin/bash
NETWORK=sumair_mynetwork
CON1=sumair_db_1
CON2=sumair_web_1
# Check if both containers exist in the network
if docker network inspect "$NETWORK" | grep -e "$CON1" -e "CON2" >/dev/null 2>&1; then
    echo "Connection is established.Containers $CON1 and $CON2  exist in the network $NETWORK."
else
    echo "Connection is not established. One or both containers do not exist in the network."
fi
