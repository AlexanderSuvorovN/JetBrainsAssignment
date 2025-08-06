#!/bin/bash

set -x

# Define variables
USERNAME=suvorovbt
IMAGE_NAME=hello-world-app
TAG=latest

docker login

# Build Docker image
docker build -t $IMAGE_NAME .

# Tag the image
docker tag $IMAGE_NAME $USERNAME/$IMAGE_NAME:$TAG

# Push the image
docker push $USERNAME/$IMAGE_NAME:$TAG