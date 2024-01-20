#!/bin/bash

TAG=ygpark80/docker-ansible:latest

# Build the Docker image
docker build -t ${TAG} .

# Run a simple command inside the container to verify that it's working
if docker run --rm ${TAG} ansible --version; then
    echo "Test passed: Ansible is installed and can be run inside the container"
else
    echo "Test failed: Ansible is not installed or cannot be run inside the container"
    exit 1
fi
