# fs-manipulation 
alias ls='ls'
alias ll='ls -alt'
alias la='ls -A'
alias l='ls -CF'
alias free='free -m'

# vim aliases
alias m='mvim'
alias e='emacs'

# Git aliases
alias gs='git status'
alias gru='git remote update'
alias grom='git rebase origin/master'
alias grod='git rebase origin/develop'
alias grup='git remote update -p'
alias stale='git branch -r --merged develop | xargs -L 1 -I {} git log -1 --format="%cn last committed to {} %cr" {} | egrep -v "master|release|origin/develop"'
alias my_stale='stale | grep -i desmarais'
alias push='git push -u'


#gitx 
alias gitx='gitx --all'
alias git-reflog='gitx --all `git reflog | cut -c1-7`'

#love/lua
alias love='/Applications/love.app/Contents/MacOS/love'

#misc
alias grep='grep --color=auto'
alias rgrep='grep -r'

alias be='bundle exec'
alias r="rake"
alias lc="rake log:clear"
alias rof='be rake SPEC_OPTS="--only-failures"'

alias rspec='rspec --color'

alias wit='cd ~/work/witsaid'
alias pils='cd ~/work/pilsen'
alias wellist='cd ~/work/wellist'

alias comp="docker-compose"

alias pg_reboot="rm /usr/local/var/postgres/postmaster.pid"
