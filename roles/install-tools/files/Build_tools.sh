#!/bins/bash

# Update searchsploit
searchsploit -u

# Build linwinpwn
bash /opt/linWinPwn/install.sh

# Build reverse shell generator
docker build -t reverse_shell_generator /opt/reverse-shell-generator/.

# Build Hoax Shell
cd /opt/hoaxshell; sudo pip3 install -r requirements.txt
chmod +x hoaxshell.py

# Add all tools in /opt to path
export PATH=$(find /opt -mindepth 1 -maxdepth 1 -type d -exec sh -c 'find "$1" -maxdepth 1 -type f -executable -print -quit' _ {} \; | tr '\n' ':' | sed 's/:$//'):$PATH

# Install sublime packages
subl -b --command "install_package_control"; subl -b --command "advanced_install_package {\"packages\": \"Terminus\"}"; subl -b --command "advanced_install_package {\"packages\": \"Pretty JSON\"}"; subl -b --command "advanced_install_package {\"packages\": \"JsFormat\"}"; subl -b --command "advanced_install_package {\"packages\": \"ZSH\"}"; subl -b --command "advanced_install_package {\"packages\": \"LaTeXTools\"}"; subl -b --command "advanced_install_package {\"packages\": \"Compare Side-By-Side\"}"; subl -b --command "advanced_install_package {\"packages\": \"CodeFormatter\"}"; subl -b --command "advanced_install_package {\"packages\": \"BracketHighlighter\"}"

#dpkg -i /tmp/pet/*_linux_amd64.deb

#append pet bind key to the end of .zshrc
#echo 'function pet-select() {' >> ~/.zshrc && echo '  BUFFER=$(pet search --query "$LBUFFER")' >> ~/.zshrc && echo '  CURSOR=$#BUFFER' >> ~/.zshrc && echo '  zle redisplay' >> ~/.zshrc && echo '}' >> ~/.zshrc && echo 'zle -N pet-select' >> ~/.zshrc && echo 'stty -ixon' >> ~/.zshrc && echo 'bindkey "^s" pet-select' >> ~/.zshrc
