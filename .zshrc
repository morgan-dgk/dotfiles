# Created by newuser for 5.9
ZSH_THEME="cypher"

# Include aliases
if [[ -r ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

source /usr/share/oh-my-zsh/oh-my-zsh.sh

# lvim.
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-"$HOME/.local/share/lunarvim"}"
export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-"$HOME/.config/lvim"}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-"$HOME/.cache/lvim"}"
export LUNARVIM_BASE_DIR="${LUNARVIM_BASE_DIR:-"$HOME/.local/share/lunarvim/lvim"}"
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export EDITOR=lvim
export npm_config_prefix="$HOME/.local"

alias ssh="kitty +kitten ssh"


# Load Angular CLI autocompletion.
source <(ng completion script)
