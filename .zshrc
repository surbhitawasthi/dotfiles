# This is reqired how initialize auto-completion is zsh

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Theme and Prompt

autoload -U promptinit
promptinit
prompt spaceship

# Plugins

source /usr/local/Cellar/zsh-autosuggestions/0.7.0/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -d ~/.zsh/plugins ] && source ~/.zsh/plugins/*
