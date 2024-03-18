#!/bin/bash

pip3 install ansible
echo 'export PATH="$PATH:/home/kali/.local/bin"' >> ~/.zshrc; source ~/.zshrc
sleep 1
git clone https://github.com/Tr1ppyP/kali-ansible.git
cd kali-ansible
ansible-galaxy install -r requirements.yml
sudo whoami
ansible-playbook main.yml
