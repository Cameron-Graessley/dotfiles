alias noop-commit='git commit --allow-empty -m "noop, trigger build"'
alias gdmno='git diff master --name-only'
alias gsl='git stash list'
export PATH=$PATH
alias gdm='git diff master'
alias gdno='git diff --name-only'
export PATH=/usr/local/bin:$PATH
export SSH_HOME=~
export AWS_CREDENTIAL_HOME=~
source ~/cedar/scripts/go.sh
export PATH=$PATH:/Users/cameron/Library/Python/3.7/bin/
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

precmd() {
eval 'if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history | tail -n 1)" >>! ~/Logs/zsh-history-$(date "+%Y-%m-%d").log; fi'
}

plugins=(git zsh-autosuggestions)
ZSH_THEME="garyblessington"

export ZSH="/Users/cameron/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
fi
export FZF_DEFAULT_OPS="--extended"



