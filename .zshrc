# sources
if [ -f $HOME/.zshrc_work ]; then
	source $HOME/.zshrc_work
fi

if [ -f $HOME/.zshrc_personal ]; then
	source $HOME/.zshrc_personal
fi

# --- aliases ---

alias ls='ls --color'
alias gst='git status'
alias glg='git log-pretty'
alias gpl='git pull'
alias gcm='git commit'
alias gsw='git switch'
alias gad='git add'

# https://www.atlassian.com/git/tutorials/dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' 

# Some utils return tokens with `0a`, newline character at the end. This is inconvenient
# Solution taken from here: https://stackoverflow.com/questions/3482289/easiest-way-to-strip-newline-character-from-input-string-in-pasteboard
# Note: for this to work on MacOS, `coreutils` are required to get GNU version of `head` which does not complain about `-c -1`
alias copy='ghead -c -1 | pbcopy'

# --- exports --- 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# --- functions ---
jwt-decode() {
  jq -R 'split(".") |.[0:2] | map(@base64d) | map(fromjson)' <<< $1
}

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"

eval "$(starship init zsh)" 
