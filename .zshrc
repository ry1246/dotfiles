# ===================================================================
# Powerlevel10k Instant Prompt
# ===================================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ===================================================================
# Oh My Zsh Configuration
# ===================================================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# ===================================================================
# User Configuration
# ===================================================================

# Environment Variables
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Editor
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# ===================================================================
# Aliases
# ===================================================================
# Add your custom aliases here
# alias zshconfig="$EDITOR ~/.zshrc"
# alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# ===================================================================
# Powerlevel10k Theme
# ===================================================================
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
