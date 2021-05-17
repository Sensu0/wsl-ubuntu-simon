#!/bin/zsh
#
# Run this after installing omz
#
# Installs autosuggestions and syntax-highlighting.
#
# You need to restart your terminal after installation to use these.
set -x #echo on
cd
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cd - 
cd ~/.oh-my-zsh/custom/plugins/
chmod -R 755 ./zsh-syntax-highlighting/ ./zsh-autosuggestions/
cd -
cd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git config pull.rebase false
cd -
cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git config pull.rebase false
cd -
cp -r .zshrc ~/
