# sources
source $HOME/.zshrc_work

# --- aliases ---

alias ls='ls --color'
alias gst='git status'
alias glg='git log-pretty'
alias gpl='git pull'
alias gcm='git commit'
alias gsw='git switch'
alias gad='git add'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # https://www.atlassian.com/git/tutorials/dotfiles

# --- exports --- 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# --- functions ---
jwt-decode() {
  jq -R 'split(".") |.[0:2] | map(@base64d) | map(fromjson)' <<< $1
}
