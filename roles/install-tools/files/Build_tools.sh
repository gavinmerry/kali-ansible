#!/bins/bash

searchsploit -u
bash /opt/linWinPwn/install.sh
dpkg -i /opt/pet/*_linux_amd64.deb

#append pet bind key to the end of .zshrc
echo 'function pet-select() {' >> ~/.zshrc && echo '  BUFFER=$(pet search --query "$LBUFFER")' >> ~/.zshrc && echo '  CURSOR=$#BUFFER' >> ~/.zshrc && echo '  zle redisplay' >> ~/.zshrc && echo '}' >> ~/.zshrc && echo 'zle -N pet-select' >> ~/.zshrc && echo 'stty -ixon' >> ~/.zshrc && echo 'bindkey "^s" pet-select' >> ~/.zshrc
