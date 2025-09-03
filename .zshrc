eval "$(starship init zsh)"

# Enable completions
autoload -U compinit
compinit

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-completions
fpath+=('/usr/share/zsh/plugins/zsh-completions/src')

# zsh-autocomplete
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export MANPAGER="nvim +Man!"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet:$HOME/.dotnet/tools

