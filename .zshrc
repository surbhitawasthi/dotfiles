# This is reqired how initialize auto-completion is zsh
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# What is a word
autoload -U select-word-style && select-word-style bash
WORDCHARS=${WORDCHARS//-}
WORDCHARS=${WORDCHARS//.}

# Theme and Prompt
autoload -U promptinit
promptinit
prompt spaceship

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/surbhit/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/surbhit/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/surbhit/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/surbhit/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Custom Functions
[ -f ~/.zsh/custom-functions/custom-functions.zsh ] && source ~/.zsh/custom-functions/custom-functions.zsh

# plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-tab-title/zsh-tab-title.plugin.zsh

# Terraform
export PATH="/usr/local/opt/terraform@1.0/bin:$PATH"

# Prompt set up
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
