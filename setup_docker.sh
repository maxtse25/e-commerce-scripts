#!/bin/bash

# Install Docker on WSL Ubuntu
sudo apt update
sudo apt install docker.io

# Start and automate the Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Verify installation
docker --version

# Build and run Docker container
docker build -t switchyourcase .
docker run -p 3000:3000 switchyourcase
