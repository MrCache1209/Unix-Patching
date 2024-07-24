#!/bin/bash

# Update the package lists
sudo apt update

# Upgrade the installed packages
sudo apt upgrade -y

# Upgrade the distribution
sudo apt dist-upgrade -y

# Install the latest kernel
sudo apt install linux-generic -y

# Clean up unnecessary packages
sudo apt autoremove -y

# Reboot the system to apply the changes
sudo reboot
