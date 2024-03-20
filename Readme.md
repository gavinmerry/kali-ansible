Based on Ippsec's parrot build [script](https://github.com/IppSec/parrot-build) with my modifications and additional tasks.

** Make sure to pip install ansible, apt has an older copy **

**I have updated the code to change `import` to `import_tasks` due to the latest version of ansible removing the `ansible.builtin.include` function.**

# Instructions
* Start with a fresh installation of Kali Linux, this is made specifically for an installation using Gnome as it imports some of my keybindings using dconf. If not using Gnome, comment out the line including gnome-shell.yml in `roles/customize-terminal/tasks/main.yml`.
* Note, for Nessus and BurpSuite Pro, I have my own license keys which are referenced in the playbook to a specific path I use. Please update this to your own path where you store your license keys.
* clone repo and `cd` into it.
* run `bash run.sh`

# What this script does
* Various tasks for installing tools from apt, pipx, gem, cargo, go, as well as pulling releases from and cloning github repos
   * You can modify this to add tools or additional sources as necessary
* Installs pro tools such as BurpSuite Pro and Nessus. Note, you will need to parse your own license keys.
* Configures firefox to proxy https traffic with burp suite
* Configures my zsh and tmux configuration files
* Configures my gnome shell keybindings via dconf
* Configures system wide logging


# TODO

- Update forked sublime text role to my personal configurations
- Update the browser customisation to my firefox preferences
- update the terminal role from gnome to xfce 
- Update Nessus install Role to move the license key variable to main.yml like Burp
- Add in kali system config so desktop display, tools bar, app locations etc. are all configured to my personal preferences.
- Add some more pip install tools
- Add an installer for the github tools.