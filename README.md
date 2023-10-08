# Uhm, ~~`dotfile`~~ config files

- bookmarked [commit](https://github.com/ramidem/dotfiles/commit/844dd8a3e1f24c714d48b6af0f414f70cd2a2c97). remove later

Trying to move away from MacOs for development work. The idea is to move the development environment to the cloud or just home server which I can access anywhere and on whatever device.

**NOTES**

- `ssh-copy-id` or something similar. see `copy_ssh_keys`.
    - for now, just create ssh key from the VM
    - NOTE: if `ssh -T git@github.com` fails, try;
        - `sudo -aef | grep sshd`
            - `sudo systemctl start ssh`
        - `sudo ufw status`
            - `sudo ufw allow ssh`
- TODO acquire one or more Raspberry PIs
- add email and name to gitconfig
- clone this `git clone git@github.com:ramidem/dotfiles.git ~/.dotfiles`
- you need to setup zsh
- install oh-my-zsh
- set zsh as the default shell
- you need to install `stow` before executing `ubuntu`
	- NOTE: `locale` stuff errors when you execute from host computer's terminal
