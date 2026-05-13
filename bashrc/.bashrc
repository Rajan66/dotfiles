source ~/.config/bash/rc
# If not running interactively, don't do anything (leave this at the top of this file)
# $- returns bash shell options, @example echo $- -> himBHs
# check for `i` in the output i.e. interactive shell option
[[ $- != *i* ]] && return

# enable command hashing, remember commands paths for speed
set -h

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# nvm use --lts >/dev/null
