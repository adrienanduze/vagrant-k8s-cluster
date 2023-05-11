#!/bin/bash

echo "Installing Ansible dependencies and Git"

# Installation des prerequis
sudo apt update && sudo apt -y install python3 python3-pip git

# Installation de ansible via pip
python3 -m pip install --user ansible

# Ajout des binaires de ansible au Path
echo "export PATH=$PATH:/home/vagrant/.local/bin/" >> /home/vagrant/.bashrc