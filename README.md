# wsl2-ubuntu-simon
Like Simon-manjaroawesome, but for wsl Ubuntu.

While you can use git and vim for windows, there is limited customization for them. Running these in Windows Subsystem for Linux will also give you more tools to work with. 

All scripts are executable right away for quick deployment.

---

<h3>Scripts</h3>

<i>install.sh</i> is mainly for installing a bunch of applications I use.

<i>omzinstall.sh</i> installs <a href="https://github.com/ohmyzsh/ohmyzsh">ohmyzsh</a> and <a href="https://github.com/romkatv/powerlevel10k">Powerline10k</a>

<i>omzplugins.sh</i> installs <a href="https://github.com/zsh-users/zsh-autosuggestions">zsh-autosuggestions</a> and <a href="https://github.com/zsh-users/zsh-syntax-highlighting">zsh-syntax-highlighting</a>.
Restart your terminal after installation or run <i>source ~/.zshrc</i>.

<i>mega-script.sh</i> will run the above mentioned scripts and copy all config files in the this repo to where they should be.

---

<h3>Aliases and functions</h3>


The <i>.zshrc</i> executes commands directly through custom aliases, rather than executing scripts. The scripts are still included however in case you find some use for them.

Alias <i>j</i> will execute <b>jump plugin</b>.

Alias <i>cls</i> will execute <i>clear</i> command.

Function <i>custupdate</i> will update any custom plugins and themes I use with <i>omz</i>.

---

<h3>Good to know</h3>

<i>.zshrc</i> is to be stored at <b>~/</b> (/HOME/USER) path. Same applies to <i>.vimrc</i>

<b>C:\</b> and other <b>windows partitions</b> are found at <b>/mnt/</b>.

---

<h3>Credits</h3>

Myself for this repo

ohmyzsh for making ohmyzsh

zsh-users for making zsh-autosuggestions and zsh-syntax-highlighting

romkatv for making Powerline10k
