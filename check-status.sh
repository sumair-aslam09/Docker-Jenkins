#!/bin/bash

# Path to your docker-compose.yml file
DOCKER_COMPOSE_FILE="/home/sumair/nginx/docker-compose.yml"

# Check if the docker-compose.yml file exists
if [ ! -f "$DOCKER_COMPOSE_FILE" ]; then
  echo "docker-compose.yml file not found in the specified path: $DOCKER_COMPOSE_FILE"
  exit 1
fi

# Container names to check
CONTAINERS=("nginx_mysql_1" "nginx_nginx_1")

# Run `docker-compose ps` command and capture the output
CONTAINER_STATUS=$(docker-compose -f "$DOCKER_COMPOSE_FILE" ps)

# Check the status of specific containers
for CONTAINER in "${CONTAINERS[@]}"; do
  # Check if the container name is found in the output and if it is in an "Up" state
  if echo "$CONTAINER_STATUS" | grep -q "$CONTAINER" && echo "$CONTAINER_STATUS" | grep -q "$CONTAINER.*Up"; then
    echo "Container $CONTAINER is running."
  else
    echo "Container $CONTAINER is not running."
  fi
done
