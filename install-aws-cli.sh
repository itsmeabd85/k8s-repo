#!/bin/bash

# AWS CLI v2 install script for Ubuntu

echo "Updating packages..."
sudo apt update

echo "Installing dependencies (curl, unzip)..."
sudo apt install unzip curl -y

echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Unzipping AWS CLI..."
unzip awscliv2.zip

echo "Installing AWS CLI..."
sudo ./aws/install

echo "Verifying AWS CLI installation..."
aws --version

echo "To configure AWS CLI, run: aws configure"
