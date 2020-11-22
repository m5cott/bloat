###################################################
 # Name: .bashrc
 # Directory: /home/$USER/.bashrc
 # Purpose: personalized bashrc
 # Author: Michael Scott (m5cott)
 # Created: 2020-11-01
 # License: MIT License
###################################################

# check for interactive shell
[[ $- == *i* ]] || return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Add a timestamp to each command.
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Improve output of less for binary files.
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Personal binaries
export PATH=${PATH}:~/scripts

# Powerline Go Pretty Prompt
#GOPATH=$HOME/go
#function _update_ps1() {
#    PS1="$($GOPATH/bin/powerline-go -error $?)"
#}
#if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

# nice colors v1
export PROMPT_DIRTRIM=3
export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

# setup nice colors
#export PROMPT_DIRTRIM=3
#export PS1="$(tput setaf 1)\w\n\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 5)\]\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$\[$(tput sgr0)\] "
