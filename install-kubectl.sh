#!/bin/bash

# KUBECTL Install Script for Ubuntu

echo "Downloading latest kubectl version info..."
KUBECTL_VERSION=$(curl -sL https://dl.k8s.io/release/stable.txt)

if [[ -z "$KUBECTL_VERSION" ]]; then
  echo "Failed to fetch the latest kubectl version. Check your internet connection."
  exit 1
fi

echo "Latest version: $KUBECTL_VERSION"
echo "Downloading kubectl binary..."
curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"

echo "Making kubectl executable..."
chmod +x kubectl

echo "Moving kubectl to /usr/local/bin..."
sudo mv kubectl /usr/local/bin

echo "Verifying kubectl installation..."
kubectl version --client
