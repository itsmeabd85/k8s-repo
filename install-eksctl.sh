#!/bin/bash

# EKSCTL Install Script for Ubuntu

echo "Downloading eksctl binary..."
curl --silent --location "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" -o eksctl.tar.gz

echo "Extracting eksctl..."
tar -xzf eksctl.tar.gz

echo "Moving eksctl to /usr/local/bin..."
sudo mv eksctl /usr/local/bin

echo "Verifying eksctl installation..."
eksctl version
