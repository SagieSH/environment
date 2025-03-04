alias cod='cd /home/shlafi/code'

# Git aliases
alias gpull='git pull origin $(git branch --show-current)'
alias gpush='git push origin $(git branch --show-current)'
alias gpushu='git push --set-upstream origin $(git branch --show-current)'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcb='git branch --show-current'
alias ga='git add .'
alias gb='git branch'
alias gs='git status'
alias gd='git diff'
alias gcm='git commit -m'
alias gcam='git add . && git commit -m'
alias gpum='git pull origin main'
alias gpud='git pull origin develop'
alias gcom='git checkout main && git pull origin main'
alias gcod='git checkout develop && git pull origin develop'


# setup autocompletion
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  source /usr/share/bash-completion/completions/git
    __git_complete gco _git_checkout
    __git_complete gb _git_branch
else
    echo "Error loading git completions"
fi
