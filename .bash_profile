source /usr/local/Cellar/coreutils/8.10/aliases

# RVM
[[ -s "/Users/bdesmarais/.rvm/scripts/rvm" ]] && source "/Users/bdesmarais/.rvm/scripts/rvm"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# enable color for ls
export CLICOLOR=1

# ssh autocomplete
complete -W "#(echo `grep -e '^Host ' ~/.ssh/config | cut -f 2 -d ' '`)" ssh

# git autocomplete
source /usr/local/etc/bash_completion.d/git-completion.bash
complete -o default -o nospace -F _git_checkout gco
complete -o default -o nospace -F _git_remote gru
GIT_PS1_SHOWDIRTYSTATE=true

export EDITOR=vi

export HISTFILESIZE=100000
export HISTSIZE=100000

source .bash_colors
source .bash_aliases
source /Users/bdesmarais/.rvm/scripts/rvm
source /usr/local/etc/bash_completion.d/git-completion.bash

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

# prompt
export PS1="\[${BGreen}\]\w\$(__git_ps1 \" \[${BPurple}\](%s)\") \[${BIYellow}\] ᔩ ⚡ ⚚  \[${Color_Off}\]"
