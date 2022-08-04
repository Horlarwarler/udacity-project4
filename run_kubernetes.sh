#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=house-flask


# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deploy house-flask2 --image=$dockerpath

kubectl run house-flask-pod --image=$dockerpath --image-pull-policy=Always


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward house-flask-pod 8000:80


