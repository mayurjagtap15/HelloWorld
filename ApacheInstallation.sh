#!/bin/bash

# Install Apache on CentOS/RHEL/Fedora
echo "Updating package list..."
sudo yum update -y

echo "Installing Apache (httpd)..."
sudo yum install httpd -y

echo "Enabling and starting Apache service..."
sudo systemctl enable httpd
sudo systemctl start httpd

echo "Checking Apache status..."
sudo systemctl status httpd | grep Active

echo "Apache installation completed!"
