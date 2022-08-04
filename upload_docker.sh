#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=crezent/house-flask2

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u crezent
docker tag house-flask2 $dockerpath


# Step 3:
# Push image to a docker repository
docker push $dockerpath