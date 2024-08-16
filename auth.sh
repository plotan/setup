#!/bin/bash

# Pre-authentication message
PRE_AUTH_MESSAGE="
**********************************************************
*                                                        *
*      (    (                (      )                    *
*      )\ ) )\ )  *   )      )\ )  ( /(  (  (            *
*     (()/((()/(` )  /( (   (()/(  )\()) )\))(   '       *
*      /(_))/(_)|)() ))\   /(_))((_)\ ((_)()\ )          *
*     (_)) (_)) (_)_/((_)_ (_))   ((_)(_()((_)(_)        *
*     | _ \|_ _|| |(_)) __|| |    / _ \|  \/  ||         *
*     |  _/ | | | |   | (_ | |__ | (_) | |\/| |)         *
*     |_|  |___||_|    \___|____| \___/|_|  |_|          *
*                                                        *
*                                                        *
*                  Welcome to K123                       *
*                                                        *
**********************************************************
"

# Function to create the pre-authentication message file
create_pre_auth_message() {
    echo "Creating pre-authentication message..."
    echo "$PRE_AUTH_MESSAGE" | sudo tee /etc/motd > /dev/null
}

# Function to enable the pre-authentication message
enable_pre_auth_message() {
    echo "Enabling pre-authentication message..."
    
    # If using SSH, add the message to the banner
    echo "Banner /etc/motd" | sudo tee -a /etc/ssh/sshd_config > /dev/null
    
    # Restart the SSH service to apply changes
    sudo systemctl restart sshd
    
    echo "Pre-authentication message enabled."
}

# Main function to run all tasks
main() {
    create_pre_auth_message
    enable_pre_auth_message
}

# Run the main function
main
