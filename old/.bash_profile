## Add macport
export PATH=$PATH:/opt/local/bin:/opt/local/sbin

### Aliases
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

#Git
alias  gl="git ls"
alias gll="git ll"
alias glg="git lg"
alias gaa="git add ."
alias  ga="git add"
alias gap="git add -p"

alias gcm="git commit -m"
alias gca="git commit -a -m"
alias  gv="git commit -v"

alias  gd="git diff"
alias  gs="git status"
alias  gss="git status -sb"

#load git autocompletion (osx)
source /usr/local/etc/bash_completion.d/git-completion.bash

# Open specified files in Sublime Text
# "s ." will open the current directory in Sublime
alias sublime='open -a "Sublime Text"'

# Color LS
colorflag="-G"
alias ls="command ls ${colorflag}"
alias l="ls -lF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories

# Quicker navigation
alias home="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias weather='curl http://wttr.in/Nantes'

## Get the process on a given port
function port() {
  lsof -i ":${1:-80}"
}

alias unsetProxies="unset http_proxy && unset https_proxy && unset HTTP_PROXY && unset HTTPS_PROXY"

### Prompt Colors
# Modified version of @gf3âs Sexy Bash Prompt
# (https://github.com/gf3/dotfiles)
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
	tput sgr0
	if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
		BLACK=$(tput setaf 190)
		MAGENTA=$(tput setaf 9)
		ORANGE=$(tput setaf 172)
		GREEN=$(tput setaf 190)
		PURPLE=$(tput setaf 141)
		WHITE=$(tput setaf 0)
	else
		BLACK=$(tput setaf 190)
		MAGENTA=$(tput setaf 5)
		ORANGE=$(tput setaf 4)
		GREEN=$(tput setaf 2)
		PURPLE=$(tput setaf 1)
		WHITE=$(tput setaf 7)
	fi
	BOLD=$(tput bold)
	RESET=$(tput sgr0)
else
	BLACK="\033[01;30m"
	MAGENTA="\033[1;31m"
	ORANGE="\033[1;33m"
	GREEN="\033[1;32m"
	PURPLE="\033[1;35m"
	WHITE="\033[1;37m"
	BOLD=""
	RESET="\033[m"
fi

export BLACK
export MAGENTA
export ORANGE
export GREEN
export PURPLE
export WHITE
export BOLD
export RESET

### Misc

# Only show the current directory's name in the tab
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

shopt -s extglob # enables extended globbing, usefull for ls !(*.*)

### Extra

#. ~/z.sh

#https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#Torch
# [ -f /usr/local/torch/install/bin/torch-activate ] && . /usr/local/torch/install/bin/torch-activate

[[ -r ~/.bashrc ]] && . ~/.bashrc

# if [ "$TMUX" = "" ]; then exec tmux; fi

export PATH="/Applications/arx-3.6.0.app/Contents/bin:$PATH"

export LC_ALL=$LANG
