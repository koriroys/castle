export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# load smartcd
[ -r "$HOME/.smartcd_config" ] && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) && source ~/.smartcd_config

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.env_vars ]; then
  source ~/.env_vars
fi

# Editors
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
export EDITOR="vim"
# export BUNDLER_EDITOR="vim"
export BUNDLER_EDITOR="sublime"

# Aliases
alias q="exit"
alias ll='ls -lahGT'
alias tree="tree --dirsfirst -lFC"
alias t1="tree --dirsfirst -lFCL 1"
alias grep="grep --color=auto"
alias be="bundle exec"
alias rst="touch tmp/restart.txt && echo "Restarted.""
alias tlog="tail -f log/development.log"
alias bers="be rake spec"
alias berslow="be rspec --tag ~slow"
alias memz="top -o vsize"
alias cpu="top -o cpu"
alias fml="foreman start -f Procfile.local"
alias dev="cd ~/source/devmynd"
alias incoming="exec $SHELL -l"
alias reload='source ~/.bash_profile'
alias pi='rspec spec/'
alias ..='cd ..'
alias ...='cd ../..'
alias wtf='echo $?'

# Git Aliases
alias ga='git add --all'
alias gap='git add --all -p'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git lga'
alias gp='git push'
alias gr='git pull --rebase'
alias gs='git status'
alias gv='git remote -v'

# Git Autocomplete
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Git prompt for PS1
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

# Aliases for services
alias redis_start="redis-server /usr/local/etc/redis.conf"
alias mongo_start="mongod --config /usr/local/etc/mongod.conf"
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias mysql_start="mysql.server start"
alias mysql_stop="mysql.server stop"
alias rem="redis-cli MONITOR"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Alias hub as git per hub readme
eval "$(hub alias -s)"

# Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Bash Prompt
if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

# Stuff that shouldn't get added to a repo
if [ -f ~/.private_stuff ]; then
  source ~/.private_stuff
fi

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Node.js
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"

# Ruby Tuning
export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_GC_MALLOC_LIMIT=1000000000
export CFLAGS="-march=core2 -O3 -pipe -fomit-frame-pointer"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
