# Uhm, ~~`dotfile`~~ config files

- bookmarked [commit](https://github.com/ramidem/dotfiles/commit/844dd8a3e1f24c714d48b6af0f414f70cd2a2c97). remove later

Trying to move away from MacOs for development work. The idea is to move the development environment to the cloud or just home server which I can access anywhere and on whatever device.

**DEBIAN TODOs**

You need to install these packages on a freshly installed debian before `vm/copy`.

- `sudo`
- `rsync`
- `make`
- `stow`

`sudo ifconfig` to get the IP and `export` it as `DEBIAN_ADDR` on your local machine. Then, `make vm/copy` the contents of `.dotfiles/`

---
login root
install rsync
install sudo
add user to sudoers `usermod -aG sudo rmdm`
`ip addr`
ssh to vm
