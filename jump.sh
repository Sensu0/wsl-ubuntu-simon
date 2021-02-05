#!/bin/zsh
# Mark jumps. Use ":%s/PATH/Replacement/g" to replace the PATH you want to mark these to. 
# $whoami needs to be replaced, because it doesn't work as intended

source ~/.oh-my-zsh/plugins/jump/jump.plugin.zsh

userprofile=$1

echo "Please enter your Windows username"
read userprofile

echo ""
echo "Press y key instead of Enter to accept these"
echo ""
source ~/.oh-my-zsh/plugins/jump/jump.plugin.zsh
set -x #echo on
cd /mnt/c && mark
cd /mnt/c/Users/ && mark win-users
cd /mnt/c/Users/$userprofile\/Documents && mark documents 
cd /mnt/c/Users/$userprofile\/Downloads && mark downloads
cd /mnt/c/Users/$userprofile\/Desktop && mark desktop
