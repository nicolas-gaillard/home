DEFAULT_USER=$(whoami)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/nicolaz/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# # --- SPACESHIP PROMPT ---
# # ORDER
# SPACESHIP_PROMPT_ORDER=(
#   time     #
#   vi_mode  # these sections will be
#   user     # before prompt char
#   host     #
#   char
#   dir
#   git
#   node
#   ruby
#   xcode
#   swift
#   golang
#   docker
#   venv
#   pyenv
# )

# # USER
# SPACESHIP_USER_PREFIX="" # remove `with` before username
# SPACESHIP_USER_SUFFIX="" # remove space before host

# # HOST
# # Result will look like this:
# #   username@:(hostname)
# SPACESHIP_HOST_PREFIX="@:("
# SPACESHIP_HOST_SUFFIX=") "

# # DIR
# SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
# SPACESHIP_DIR_TRUNC='1' # show only last directory

# # GIT
# # Disable git symbol
# SPACESHIP_GIT_SYMBOL="" # disable git prefix
# SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# # Wrap git in `git:(...)`
# SPACESHIP_GIT_PREFIX='git:('
# SPACESHIP_GIT_SUFFIX=") "
# SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# # Unwrap git status from `[...]`
# SPACESHIP_GIT_STATUS_PREFIX=""
# SPACESHIP_GIT_STATUS_SUFFIX=""

# # NODE
# SPACESHIP_NODE_PREFIX="node:("
# SPACESHIP_NODE_SUFFIX=") "
# SPACESHIP_NODE_SYMBOL=""

# # RUBY
# SPACESHIP_RUBY_PREFIX="ruby:("
# SPACESHIP_RUBY_SUFFIX=") "
# SPACESHIP_RUBY_SYMBOL=""

# # XCODE
# SPACESHIP_XCODE_PREFIX="xcode:("
# SPACESHIP_XCODE_SUFFIX=") "
# SPACESHIP_XCODE_SYMBOL=""

# # SWIFT
# SPACESHIP_SWIFT_PREFIX="swift:("
# SPACESHIP_SWIFT_SUFFIX=") "
# SPACESHIP_SWIFT_SYMBOL=""

# # GOLANG
# SPACESHIP_GOLANG_PREFIX="go:("
# SPACESHIP_GOLANG_SUFFIX=") "
# SPACESHIP_GOLANG_SYMBOL=""

# # DOCKER
# SPACESHIP_DOCKER_PREFIX="docker:("
# SPACESHIP_DOCKER_SUFFIX=") "
# SPACESHIP_DOCKER_SYMBOL=""

# # VENV
# SPACESHIP_VENV_PREFIX="venv:("
# SPACESHIP_VENV_SUFFIX=") "

# # PYENV
# SPACESHIP_PYENV_PREFIX="python:("
# SPACESHIP_PYENV_SUFFIX=") "
# SPACESHIP_PYENV_SYMBOL=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

plugins=(
    brew
    git
    osx
    zsh-completions
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
function gacp() {
    git add .
    git commit -m "$1"
    git push
}

# You may need to manually set your language environment
export LANG=fr_FR.UTF-8
export LC_ALL=fr_FR.UTF-8
export TERM=xterm-256color

# --- ALIAS ---
# For a full list of active aliases, run `alias`.
alias sourcez="source ~/.zshrc"
alias configz="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias hc="history -c"
alias x="exit"
alias unsetProxies="unset http_proxy && unset https_proxy && unset HTTP_PROXY && unset HTTPS_PROXY"
alias weather='curl http://wttr.in/Nantes'
alias grep="grep --color=auto" # colorize `grep` output

# Nav
alias home="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias less="less -R"
alias rm="rm -i" # confirm removal

# Color LS
colorflag="-G"
alias ls="command ls ${colorflag}"
alias l="ls -alF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories
alias ll="exa -al"

# Git
alias gl="git ls"
alias gaa="git add ."
alias ga="git add"
alias gap="git add -p"
alias gcm="git commit -m"
alias gd="git diff"
alias gs="git status"
alias gss="git status -sb"
alias gpom="git pull origin master"
alias gco='git checkout'
alias gr='git rebase'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Run
eval "$(starship init zsh)"
autoload -U compinit && compinit