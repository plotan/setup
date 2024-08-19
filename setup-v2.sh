#!/bin/bash

# Update and upgrade system packages
echo "Updating and upgrading system packages..."
sudo apt update && sudo apt upgrade -y
echo "System packages updated and upgraded."

# Install necessary build tools and libraries
echo "Installing build tools and required libraries..."
sudo apt install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y
echo "Build tools and libraries installed."

# Install NVM (Node Version Manager)
echo "Installing NVM (Node Version Manager)..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
echo "NVM installed."

# Load NVM
echo "Loading NVM..."
source ~/.bashrc
echo "NVM loaded."

# List available Node.js versions and install the specified version
echo "Listing available Node.js versions..."
nvm list-remote

echo "Installing Node.js version 20.16.0..."
nvm install v20.16.0
echo "Node.js version 20.16.0 installed."

# Verify Node.js installation
echo "Verifying Node.js installation..."
node -v

# Install PM2 globally
echo "Installing PM2 globally..."
npm install pm2 -g
echo "PM2 installed."

# Verify PM2 installation
echo "Verifying PM2 installation..."
pm2 -v

# Update npm to the latest version
echo "Updating npm to the latest version..."
npm install -g npm@latest
echo "npm updated."

# Verify npm installation
echo "Verifying npm installation..."
npm -v

echo "Setup complete!"
