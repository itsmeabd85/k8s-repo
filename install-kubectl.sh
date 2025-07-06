#!/bin/bash

# Install specific version of kubectl
KUBECTL_VERSION="v1.30.1"  # Replace with known stable version

echo "Downloading kubectl $KUBECTL_VERSION..."
curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"

echo "Making kubectl executable..."
chmod +x kubectl

echo "Moving kubectl to /usr/local/bin..."
sudo mv kubectl /usr/local/bin

echo "Verifying kubectl installation..."
kubectl version --client

