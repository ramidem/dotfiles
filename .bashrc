# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

# export PS1="\[\e[33m\]@\u\[\e[m\] at \[\e[33m\]\h\[\e[m\] in \[\e[33m\]\W\[\e[m\] \[\e[31m\]\`parse_git_branch\`\[\e[m\]$ "
export PS1="\n\[\e[33m\]@\u\[\e[m\] in (\[\e[33m\]\W\[\e[m\]) \[\e[31m\]\`parse_git_branch\`\[\e[m\]\[\e[33m\]$\[\e[m\] "

# RVM path

# Aliases
alias uu="sudo apt-get update && sudo apt-get upgrade"
alias cc="sudo apt-get autoclean && sudo apt-get autoremove"
alias ll="ls -la"
alias v="vim"

# source ~/.bashrc
alias sb="source ~/.bashrc"
	# Dropbox
	alias db="cd /home/med/Dropbox/"

	# Dropbox/Code
	alias dbc="cd /home/med/Dropbox/Code"

	# Dropbox/Code/learn/rails
	alias dbr="cd /home/med/Dropbox/Code/learn/rails"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
