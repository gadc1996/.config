#
#   _               _              
#  | |__   __ _ ___| |__  _ __ ___ 
#  | '_ \ / _` / __| '_ \| '__/ __|
# _| |_) | (_| \__ \ | | | | | (__ 
#(_)_.__/ \__,_|___/_| |_|_|  \___|
#                                  

### Exports
# Set Proper Color
export TERM="xterm-256color" 
# Export ruby gems directory
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
# Export composer directory
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
# Export aws directory
export PATH="$HOME/.local/bin:$PATH"
# Export scripts directory
export PATH="$HOME/scripts:$PATH"
# Export yarn directory
# export PATH="$PATH:$(yarn global bin)"
# Export aws eb cli directory
export PATH="/home/alex/.ebcli-virtual-env/executables:$PATH"

# Node Versione Manager(nvm)
# source /usr/share/nvm/init-nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shell Promt
PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\\[\033[1;33m\]$ \[\033[0m\]"

### Aliases
# cd
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

# php
alias php='php74'

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
