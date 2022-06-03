#! /usr/bin/env bash

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# ls
alias ls='exa -F --color=always --group-directories-first' # list files as a grid
alias la='exa -F -a --color=always --group-directories-first'  # include hidden files 
alias ll='exa -F -l --color=always --group-directories-first'  # long format
alias lla='exa -F -la --color=always --group-directories-first'  # include hidden files
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# cat
alias cat="bat"

# grep
alias grep='rg' # display lines and highlight where pattern is found
alias fgrep='rg -l' # display filenames where pattern is found
alias zgrep='rg -z' # search on a compressed file

# Pacman
alias update='sudo pacman -Syu'
alias install='sudo pacman -S'
alias search='pacman -Ss'
alias remove='sudo pacman -R'
alias info='pacman -Si'
alias orphan='pacman -Qtd'
alias foreign='pacman -Qm'

# Paru
alias paruupdate='paru -Syu'
alias paruinstall='paru -S'
alias parusearch='paru -Ss'
alias paruremove='paru -R'
alias paruinfo='paru -Si'
alias paruorphan='paru -Qtd'
alias paruforeign='paru -Qm'

# git
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gbd='git branch -d'
alias gcb='git checkout -b'
alias gc='git checkout'
alias gcl='git clone'
alias gcm='git commit'
alias gm='git merge'
alias gp='git pull'
alias gpo='git push origin'
alias gs='git status'
alias gl='git log'
alias gcf='git clean -f'
alias gcd='git clean -d'
alias gcfd='git clean -f -d'
alias gcbs='git branch | grep -v "master|DevQA" | xargs -I {} -n 1 git branch -d {}'

# Controlla
alias containerup='sudo docker-compose up -d nginx mysql phpmyadmin workspace'
alias containerdown='sudo docker-compose down'
alias containerstart='sudo docker-compose exec workspace bash'

# Python
alias venvcreate='python -m venv venv'
alias venvactivate='. venv/bin/activate'

# power management
alias suspend='systemctl suspend'
alias hibernate='systemctl suspend'

# Wifi
alias 4goff='nmcli device disconnect wlp2s0b1'
 
# Xclip
alias xclip='xclip -sel clip <'

# Icat
alias icat='kitty +kitten icat'

# Project shortcuts
alias fs='cd ~/farmasup/'
alias lf='cd ~/leanfit-backoffice/'
alias ms='cd ~/more-shots/'
alias ed='cd ~/eldemocrata/'
alias pc='cd ~/pilates-court/'
alias ng='cd ~/neuron-games/'
alias to='cd ~/tresositas/'
alias yrs='yarn run serve'
alias vim='nvim'

