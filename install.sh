# Update repos and install tools
sudo apt update
sudo apt install -y zsh vim htop neofetch glances man wget curl tldr

# Setup vim
mkdir -p ~/.vim/colors
cp -vr .vimrc ~/
cd ~/.vim
git clone https://github.com/sjl/badwolf.git
cp -vr ./badwolf/colors/ ~/.vim/
git clone --depth 1 https://github.com/codota/tabnine-vim
cd -
