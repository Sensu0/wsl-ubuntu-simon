#For installing Oh My Zsh along with the theme powerlevel10k
set -x #echo on
cd ~/
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) | sed 's/exec zsh -l//g'"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
cd -
cd ~/.oh-my-zsh/custom/themes/powerlevel10k
git config pull.rebase false
cd -
