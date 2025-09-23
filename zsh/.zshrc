# Created by newuser for 5.9

eval "$(starship init zsh)"

export MANPAGER='nvim +Man!'

export PATH=$PATH:$HOME/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
