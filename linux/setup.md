# Linux Setup

0. Homebrew Install Script
  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

  ```sh
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  ```

1. Update linux, install stuff and set `zsh` as the default shell.
  ```sh
  chmod 755 linux.sh
  ./linux
  ```
   Reboot or logout.

2. Install [Oh-my-zsh](https://ohmyz.sh/#install) and plugins.
  ```sh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  chmod 755 zsh.sh
  ./zsh.sh
  ```

3. PowerLevel10k
  ```sh
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  ```

4. [Vim-plug](https://github.com/junegunn/vim-plug/blob/master/plug.vim) (`~/.config/nvim/autoload/plug.vim`)

5. NVM Install Script
  ```sh
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
  ```

6. Symlinks
  ```sh
  chmod 755 symlinks.sh
  ./symlinks
  ```
7. i3

Others:

- [Install Spotify](https://www.spotify.com/us/download/linux/)
- [Download Zoom](https://zoom.us/download)
- [Download Discord](https://discord.com/download)
