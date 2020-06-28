# Uhm, dotfiles.

**this is a work in progress**

Long Story Short...WSL2 gave up on me and I don't have the energy and time to figure out what happened.

I am loving the experience of setting up this repo, so far. Although, I am not sure if I really want to stick with Neovim as my code editor. But, we'll see. Pop OS is poppin' too.

**Feel free to check this out**

Preferrably, you'd want to clone this to `~/dotfiles`. I am still working on scripts for absolute paths. Until then, be very careful

    $ git clone https://github.com/ramidem/dotfiles.git ~/
    $ cd dotfiles/

Make the script executable.

    $ chmod 755 install.sh
    $ ./install.sh

I don't know why it's `755` either. But, here you go. [explanation](https://askubuntu.com/questions/932713/what-is-the-difference-between-chmod-x-and-chmod-755#:~:text=So%20chmod%20755%20is%20like,%3Drwx%2Cgo%3Drx%20.&text=is%20not%20useful-,Show%20activity%20on%20this%20post.,users%20to%20the%20existing%20permissions.&text=755%20means%20full%20permissions%20for,and%20execute%20permission%20for%20others.)

**Next Steps**

Log out then log back in. `cd` into `~/dotfiles/`.
Install [Oh-My-Zsh via curl](https://github.com/ohmyzsh/ohmyzsh#via-curl)

Make `setup.sh` executable to prep `.zshrc` and install NVM (NodeJS and NPM).

    $ ./setup.sh
    ...
    $ ./clone.sh


---

- [ ] follow this tut on [bash](https://www.youtube.com/watch?v=e7BufAVwDiM)
- [ ] better shell script
- [ ] absolute directory path / relative directory path
- [ ] vim plug and plugins
- [ ] tmux?
- [ ] web dev stuff...no idea yet
- [ ] aliases
- [x] zsh stuff
    - [x] [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [ ] thinking.....


**aliases**
`...`

**gnome shortcuts**
`super + ,` - Settings
`super + shift + p` - launch gnome-pomodoro

Get in touch: [twitter](http://www.twitter.com/ramidem)
