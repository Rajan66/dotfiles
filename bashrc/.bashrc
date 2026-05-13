source ~/.config/bash/rc
# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
alias vi=nvim
alias venvo='source .venv/bin/activate'

set -h

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi

# Created by `pipx` on 2026-03-18 10:47:18
export PATH="$PATH:/home/rajan/.local/bin"
export PATH="$PATH:/opt/nvim/"

# initialize starship
eval "$(starship init bash)"

# initialize zoxide
eval "$(zoxide init bash)"

nvm use --lts >/dev/null
export _ZO_FZF_OPTS="-i"

shopt -s cdspell
shopt -s nocaseglob
bind "set completion-ignore-case on"
