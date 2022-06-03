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
if [ -f "$HOME/.bash_aliases" ]; then
   source "$HOME/.bash_aliases"
fi

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
