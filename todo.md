# Todo

- [ ] learn tmux
  - inspiration [https://www.youtube.com/watch?v=sSOfr2MtRU8](https://www.youtube.com/watch?v=sSOfr2MtRU8)
- [x] Coc Configuration
- [x] Vim Commentary
- [x] Fuzzy Finder
- [ ] Sneak?
- [ ] ~~Nerd Tree~~
- [ ] Move stuff into /nvim
  - [https://www.chrisatmachine.com/Neovim/01-vim-plug/](https://www.chrisatmachine.com/Neovim/01-vim-plug/)
- [x] https://linuxize.com/post/how-to-install-and-use-composer-on-ubuntu-20-04/

sudo apt install git
git clone https://github.com/vim/vim.git
cd vim
./configure
sudo apt install ncurses-dev
make
sudo make install

# STEPS

- ./install
- Clone Oh-My-Zsh
- Install Vim from source
- Install Vim Plug
        # for vim
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
- Or Install Neovim. on Elementary OS, install with snap
        # for Neovim
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
- In Vim/Neovim, do `:PlugInstall"`

- Install LAMP
    - prerequisites

        sudo apt install apache2 php mysql-server php-mysql libapache2-mod-php
        sudo mysql

        ```mysql
        SELECT user,authentication_string,plugin,host FROM mysql.user;
        ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
        FLUSH PRIVILEGES
        ```

    - creating anoth mysql user
        ```mysql
        CREATE USER 'sammy'@'localhost' IDENTIFIED BY 'password';
        GRANT ALL PRIVILEGES ON *.* TO 'sammy'@'localhost' WITH GRANT OPTION;
        ```

- Composer / Laravel
  - update and install prerequisites
  
        sudo apt update
        sudo apt install wget php-cli php-zip unzip

  - download composer installer

        php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

  - verify the installer

        HASH="$(wget -q -O - https://composer.github.io/installer.sig)"
        php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

  - The following command will install Composer in the /usr/local/bin directory:

        sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

  - verify installation

        composer

  - might need to 
  
        sudo chown -R $USER ~/.composer/

  - Php 7.3

        sudo add-apt-repository ppa:ondrej/php
        sudo apt-get update
        sudo apt-get install php7.3

    - extensions
      
        sudo apt-get install php7.3-curl
        php7.3-gd
        php7.3-bcmath
        php7.3-cgi
        php7.3-ldap
        php7.3-mbstring
        php7.3-xml
        php7.3-soap
        php7.3-xsl
        php7.3-zip
