# If not running interactively, don't do anything
[ -z "$PS1" ] && return

PATH=$PATH:~/bin
PATH=$PATH:~/work/proventys/terminology-server/bin

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

export HISTFILESIZE=100000
export HISTSIZE=100000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color for ls
export CLICOLOR=1

export EDITOR=vi

# And bash completion from brew
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# git autocomplete
#source /usr/local/etc/bash_completion.d/git-completion.bash
complete -o default -o nospace -F _git_checkout gco
complete -o default -o nospace -F _git_remote gru
GIT_PS1_SHOWDIRTYSTATE=true

# ssh autocomplete
complete -W "#(echo `grep -e '^Host ' ~/.ssh/config | cut -f 2 -d ' '`)" ssh

# prompt
export PS1="\[${BGreen}\]\w\$(__git_ps1 \" \[${BPurple}\](%s)\") \[${BIYellow}\] ᔩ ⚡ ⚚  \[${Color_Off}\]"

export PS1="\n\[${LtGray}\]# \!, \t \$(__git_ps1 \" \[${BPurple}\](%s)\")\n \[${BGreen}\]\w \[${BIYellow}\] ᔩ ⚡ ⚚  \[${Color_Off}\]"

#coreutils aliases - note this must come late, as coreutils can conflict with others - see https://gist.github.com/mxcl/homebrew/issues/2867
source /usr/local/Cellar/coreutils/8.10/aliases

[[ -s "/Users/bdesmarais/.rvm/scripts/rvm" ]] && source "/Users/bdesmarais/.rvm/scripts/rvm"  # This loads RVM into a shell session.
