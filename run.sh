#!/bin/bash

pip3 install ansible
pip3 install jmespath
#echo 'export PATH="$PATH:/home/kali/.local/bin"' >> ~/.zshrc; source ~/.zshrc
ansible-galaxy install -r requirements.yml
sudo whoami
ansible-vault decrypt /mnt/hgfs/License_files/secret_vars.yml && ansible-playbook main.yml