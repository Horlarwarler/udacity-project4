#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
sudo docker build -t house-flask2 .

# Step 2: 
# List docker imagesd
sudo docker images

# Step 3: 
# Run flask app
sudo docker run -p 8000:80 house-flask2