#!/bin/bash

# KUBECTL Install Script for Ubuntu

echo "Downloading latest kubectl binary..."
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo "Making kubectl executable..."
chmod +x kubectl

echo "Moving kubectl to /usr/local/bin..."
sudo mv kubectl /usr/local/bin

echo "Verifying kubectl installation..."
kubectl version --client
