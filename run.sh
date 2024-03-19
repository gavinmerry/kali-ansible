#!/bin/bash

pip3 install ansible
pip3 install jmespath
#echo 'export PATH="$PATH:/home/kali/.local/bin"' >> ~/.zshrc; source ~/.zshrc
ansible-galaxy install -r requirements.yml
sudo whoami
ansible-playbook main.yml
