# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/rmdm/.oh-my-zsh"

ZSH_THEME="dracula"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages command-not-found zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="nvim"
alias q="exit"

alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias dist-upgrade="sudo apt-get dist-upgrade"
alias cleanup="sudo apt-get autoclean && sudo apt-get autoremove"

# Dropbox/Code/Github
alias github="cd /home/rmdm/Dropbox/Code/Github && pwd"

# Dropbox/Code/Zuitt
alias zuitt="cd /home/rmdm/Dropbox/Code/Zuitt && pwd"

# npm install -g browser-sync
# https://dev.to/fidelve/using-vim-as-your-main-editor-for-web-development-5a73
alias serve="browser-sync start --server --files . --no-notify --host $SERVER_IP --port 9000"

# copy ssh key
alias clipssh="xclip -sel clip < ~/.ssh/id_rsa.pub"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
