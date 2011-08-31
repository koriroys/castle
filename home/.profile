# Editors
export SVN_EDITOR="mate -w"
export GIT_EDITOR="mate -w"
export BUNDLER_EDITOR="mate -w"

# Aliases
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias dev='cd ~/Development'
alias obaz='dev && cd obaz'
alias be='bundle exec'

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PS1
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then source `brew --prefix`/etc/bash_completion.d/git-completion.bash; fi
PS1='[\@] \u@\h:\w$(__git_ps1 " \e[1;37m(%s)\e[0;0m") \$ '
