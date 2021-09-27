#!/bin/sh
# Make sure to check for the correct
## Anaconda installer link.
$INSTALLER="https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh"
$ANACONDA="Anaconda3-2021.05-Linux-x86_64.sh"
# Download the installer script
wget $INSTALLER && \
    chmod +x $ANACONDA && \
    echo "Running Anaconda Installer. Please follow the instructions."
    ./$ANACONDA



