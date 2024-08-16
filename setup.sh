#!/bin/bash

# Function to update and upgrade the system
update_and_upgrade() {
    echo "Updating and upgrading the system..."
    sudo apt update && sudo apt upgrade -y
}

# Function to install NVM
install_nvm() {
    echo "Installing NVM..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    
    # Load NVM into the current shell session
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
    
    # Refresh shell
    source ~/.bashrc
    
    # Verify installation
    echo "NVM version:"
    nvm --version
}

# Function to install Python and pip
install_python_and_pip() {
    echo "Installing Python and pip..."
    sudo apt install -y python3 python3-pip
    
    # Verify installation
    echo "Python version:"
    python3 --version
    echo "Pip version:"
    pip3 --version
}

# Main function to run all tasks
main() {
    update_and_upgrade
    install_nvm
    install_python_and_pip
}

# Run the main function
main
