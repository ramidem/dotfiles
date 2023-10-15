#!/bin/bash

DEBIAN_ADDR ?= unset
DEBIAN_USER ?= rmdm

MAKEFILE_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

vm/bootstrap:
	make vm/update
	sleep 1
	make vm/install

vm/update:
	@echo "Updating..."
	sudo apt update

vm/install:
	@echo "Installing packages..."
	sudo apt install git tmux zsh -y

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
