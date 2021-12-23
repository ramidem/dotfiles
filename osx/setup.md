# Uhm, ~~`dotfile`~~ config files

## TODOs

### 1. [ ] System update
```bash
sudo softwareupdate -i -a
xcode-select --install
```

The Xcode Command Line Tools includes `git` and `make`.

### 2. [ ] install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install the essentials. `cd brew/`

```bash
# Install Brew packages
./beer-me-up.sh

# Remove Brew packages
./bottoms-up.sh

# Remove then InstallBrew packages
./refill.sh
```

### 3. [ ] Install Oh-my-zsh!

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Powerlevel10k

1. Clone the repository
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

2. Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`.

### 4. [ ] Symlinks

