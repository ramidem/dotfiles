# Todo
STEPS
1. install and setup git
  - OPTIONAL

      ```
      sudo apt install git
      git clone https://github.com/vim/vim.git
      cd vim
      ./configure
      sudo apt install ncurses-dev
      make
      sudo make install
      ```

  - setup github and gitlab ssh keys

2. clone dotfiles

3. run install.sh
  - ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

4. install oh-my-zsh
  - sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  - Back up .zshrc as .zshrc.orig
    - mv ~/.zshrc ~/.zshrc.orig
  - Create a Symlink
    - ln -s ~/dotfiles/zshrc ~/.zshrc
  - run clone.sh

5. Node via NVM
  - curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | zsh
  - nvm --version
  - Latest nodejs
    - nvm install --lts
    - node -version
  - Latest NPM
    - nvm install-latest-npm
    - npm -v

6. Neovim via snap
  - sudo snap install --edge nvim --classic
  - mkdir ~/.config/nvim/
  - ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
  - run coc-extensions.sh


# STEPS
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
