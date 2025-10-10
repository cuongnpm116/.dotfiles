alias ls='ls --color=auto'

export MANPAGER='nvim +Man!'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

eval "$(starship init zsh)"
# export PATH=$PATH:$HOME/go/bin
#
# . "$HOME/.local/share/../bin/env"
