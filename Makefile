#!/bin/bash

DEBIAN_ADDR ?= unset
DEBIAN_USER ?= rmdm

MAKEFILE_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

vm/bootstrap:
	make vm/update
	sleep 1
	make vm/install
	make vm/stow

vm/update:
	@echo "Updating..."
	sudo apt update
	echo 'LANGUAGE="en_US:en"' >> ~/.bashrc
	echo 'LC_ALL="en_US.UTF-8"' >> ~/.bashrc
	echo 'LC_CTYPE="en_US.UTF-8"' >> ~/.bashrc
	echo 'LANG="en_US.UTF-8"' >> ~/.bashrc
	. ~/.bashrc
	sleep 1

vm/install:
	@echo "Installing packages..."
	sudo apt install neovim git tmux zsh stow -y

vm/stow:
	./debian

vm/zsh:
	# do this last
	@echo "Switching to zsh..."
	sudo chsh -s $(which zsh)
	sudo reboot 0

vm/copy:
	@echo "Copying contents of .dotfiles..."
	@rsync -avz -e 'ssh -p22' \
		--exclude='.git/' \
		$(MAKEFILE_DIR)/ $(DEBIAN_USER)@$(DEBIAN_ADDR):/home/$(DEBIAN_USER)/.dotfiles/
