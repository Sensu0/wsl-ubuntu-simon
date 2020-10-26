#!/usr/bin/zsh
#
#Run this after installing omz
#
#Execute with sudo or su for cd and chmod to work properly.
#
#Installs autosuggestions and syntax-highlighting.
#
#You need to restart your terminal after installation to use these.
~/

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-.oh-my-zsh/custom}/plugins/zsh-autosuggestions

.oh-my-zsh/custom/plugins/
chmod -R 755 ./zsh-syntax-highlighting/ ./zsh-autosuggestions/

~/wsl-ubuntu-simon/
