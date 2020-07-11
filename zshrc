# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/rmdm/.oh-my-zsh"

ZSH_THEME="dracula"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git colored-man-pages command-not-found zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias q="exit"

alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias dist-upgrade="sudo apt-get dist-upgrade"
alias cleanup="sudo apt-get autoclean && sudo apt-get autoremove"

# Dotfiles
alias dotfiles="cd ~/dotfiles && pwd"

# Dropbox/Code/Github
alias github="cd ~/Dropbox/Code/Github && pwd"

# Dropbox/Code/Zuitt
alias zuitt="cd ~/Dropbox/Code/Zuitt && pwd"

# npm install -g browser-sync
# https://dev.to/fidelve/using-vim-as-your-main-editor-for-web-development-5a73
alias serve="browser-sync start --server --files . --no-notify --host $SERVER_IP --port 9000"

# copy ssh key
alias clipssh="xclip -sel clip < ~/.ssh/id_rsa.pub"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
