# Uhm, ~~`dotfile`~~ config files

## 1. Setup GitHub and `git`

Install from source (optional)
```
git clone https://github.com/vim/vim.git
cd vim
./configure
sudo apt install ncurses-dev
make
sudo make install
```

## 2. clone dotfiles
Install `tmux`, `tree`, `htop`, `curl`, and `zsh`. Then clean up and switch to `zsh`

__Clone to home directory__
```
git clone git@github.com:ramidem/dotfiles.git

chmod 755 install.sh
./install.sh
```
Logout then log back in.

## 3. Oh My Zsh*T!
Installation
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

__Symlinks__
```
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
mv ~/.zshrc ~/.zshrc.orig
ln -s ~/dotfiles/zshrc ~/.zshrc
```
__More Oh My Zsh! stuff__
```
chmod 755 zsh.sh
./zsh.sh
```

__Set Theme__
```
ZSH_THEME="spaceship"
```

## 4. Node via NVM
```
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | zsh
nvm --version
```

__Latest Nodejs__
```
nvm install --lts
node -version
```

__Latest NPM__
```
nvm install-latest-npm
npm -v
```

## 5. Neovim via snap
```
sudo snap install --edge nvim --classic
mkdir ~/.config/nvim/
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
run coc-extensions.sh
```
