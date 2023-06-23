#!/bin/bash

# Path to your docker-compose.yml file
COMPOSE_FILE="/home/sumohammad/sumair/docker-compose.yml"

# Check if the docker-compose.yml file exists
if [ ! -f "$COMPOSE_FILE" ]; then
  echo "docker-compose.yml file not found in the specified path: $COMPOSE_FILE"
  exit 1
fi

# Container names to check
CONTAINER_NAMES=("sumair_db_1" "sumair_web_1")

# Run `docker-compose ps` command and capture the output
STATUS=$(docker-compose -f "$COMPOSE_FILE" ps)

# Check the status of specific containers
for CONTAINER in "${CONTAINER_NAMES[@]}"; do
  # Check if the container name is found in the output and if it is in an "Up" state
  if echo "$STATUS" | grep -q "$CONTAINER" && echo "$STATUS" | grep -q "$CONTAINER.*Up"; then
    echo "Container $CONTAINER is running."
  else
    echo "Container $CONTAINER is not running."
  fi
done
