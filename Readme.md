Based on Ippsec's parrot build [script](https://github.com/IppSec/parrot-build) with my modifications and additional tasks.

** Make sure to pip install ansible, apt has an older copy **

**I have updated the code to change `import` to `import_tasks` due to the latest version of ansible removing the `ansible.builtin.include` function.**

# Instructions
* Start with a fresh installation of Kali Linux, this is made specifically for an installation using Gnome as it imports some of my keybindings using dconf. If not using Gnome, comment out the line including gnome-shell.yml in `roles/customize-terminal/tasks/main.yml`.
* Install Ansible (pip3 install ansible)
* Clone and enter the repo (git clone)
* ansible-galaxy install -r requirements.yml
* Make sure we have a sudo token (sudo whoami)
* ansible-playbook main.yml

# What this script does
* Various tasks for installing tools from apt, pipx, gem, cargo, go, as well as pulling releases from and cloning github repos
   * You can modify this to add tools or additional sources as necessary
* Configures firefox to proxy https traffic with burp suite
* Configures my zsh and tmux configuration files
* Configures my gnome shell keybindings via dconf
* Configures system wide logging
