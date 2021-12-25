if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/ilavriv/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"


source $ZSH/oh-my-zsh.sh
source .aliases


[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ilavriv/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ilavriv/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ilavriv/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ilavriv/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U compinit && compinit

ZSH_DISABLE_COMPFIX="true"

export PATH="$HOME/.poetry/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=( git zsh-syntax-highlighting zsh-autosuggestions )

