#!/bin/bash

# Build the Docker image
docker build -t ygpark80/docker-ansible:latest .

# Run a simple command inside the container to verify that it's working
if docker run --rm ygpark80/docker-ansible:latest ansible --version; then
    echo "Test passed: Ansible is installed and can be run inside the container"
else
    echo "Test failed: Ansible is not installed or cannot be run inside the container"
    exit 1
fi
