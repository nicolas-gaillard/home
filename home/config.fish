if status is-interactive
    # Commands to run in interactive sessions can go here
end

# fish_add_path /opt/homebrew/bin

alias cat='bat -pP'

# Docker
alias dc="docker-compose"
alias dcb="docker-compose build"
alias dcd="docker-compose down --remove-orphans"
alias dcu="docker-compose up"

# Misc
alias fish-config="code ~/.config/fish/config.fish"
alias x="exit"
alias grep="grep --color=auto"
alias home="cd ~"
alias workspace="cd ~/workspace"
alias l='ls -lah --color=auto'
alias la='ls -lAh'
alias ls='ls -G'
alias lsa='ls -lah'
alias ll="exa -al"

# Git
alias gaa="git add ."
alias ga="git add"
alias gap="git add -p"
alias gcm="git commit -m"
alias gd="git diff"
alias gs="git status"
alias gss="git status -sb"
alias gpom="git pull origin master"
alias gco="git checkout"
alias gr="git rebase"
alias gspp="git stash && git pull && git stash pop"
alias gcount='git shortlog -sn'
alias glg='git log --stat --max-count=10'
alias glgg='git log --graph --max-count=10'
alias glgga='git log --graph --decorate --all'
alias glo='git log --oneline'
abbr --add gl "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Pretty log messages
function _git_log_prettily
  if ! [ -z $1 ]; then
    git log --pretty=$1
  end
end

alias glp="_git_log_prettily"
#compdef _git glp=git-log

function dei --description="Running bash in a container"
    docker exec -it $argv[1] bash
end

function pyclean
    find . -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete
end

function __enter_container_id -d "Enter container with provided id"
  set selected_container $argv
  if docker exec "$selected_container" fish >/dev/null
    docker exec -it "$selected_container" fish
  else if docker exec "$selected_container" zsh >/dev/null
    docker exec -it "$selected_container" zsh
  else if docker exec "$selected_container" bash >/dev/null
    docker exec -it "$selected_container" bash
  else
    docker exec -it "$selected_container" sh
  end
end

source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

thefuck --alias | source

pyenv init - | source

starship init fish | source
