#!/bin/bash

DEBIAN_ADDR ?= unset
DEBIAN_USER ?= rmdm

MAKEFILE_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

vm/bootstrap:
	@echo "Updating..."
	@make update

update:
	@sudo apt update

vm/copy:
	@echo "Copying contents of .dotfiles..."
	@rsync -avz -e ssh $(MAKEFILE_DIR)/ $(DEBIAN_USER)@$(DEBIAN_ADDR):/home/$(DEBIAN_USER)/.dotfiles/
