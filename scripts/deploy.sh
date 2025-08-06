#!/bin/bash

ENV=$1
IMAGE_TAG=$2
BRANCH=$3

NAMESPACE=$ENV

# For dev branches: dynamic namespaces
if [ "$ENV" = "dev" ]; then
  NAMESPACE="dev-${BRANCH}"
fi

kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -