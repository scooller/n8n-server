#!/bin/bash

# This script initializes the n8n server environment.

# Load environment variables from .env file if it exists
if [ -f ../docker/.env ]; then
    export $(grep -v '^#' ../docker/.env | xargs)
fi

# Check if Docker is running
if ! systemctl is-active --quiet docker; then
    echo "Docker is not running. Please start Docker and try again."
    exit 1
fi

# Run Docker Compose to start the n8n server
docker-compose -f ../docker/docker-compose.yml up -d

# Wait for n8n to be ready
echo "Waiting for n8n to start..."
sleep 10

# Check if n8n is running
if curl -s --head http://localhost:5678 | grep "200 OK" > /dev/null; then
    echo "n8n server is up and running!"
else
    echo "Failed to start n8n server."
    exit 1
fi