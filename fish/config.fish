###################################################
 # Name: config.fish
 # Directory: /home/$USER/.config/fish/config.fish
 # Purpose: personalize fish shell
 # Author: Michael Scott (m5cott)
 # Created: 2020-10-27
 # License: MIT License
###################################################


alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias ll="ls -FGlAhp"
alias la="ls -A"
alias l="ls -CF"
alias less="less -FSRXc"
alias cd..="cd ../"
alias ..="cd ../"
alias ...="cd ../../"
alias c="clear"
alias v="vim"
alias sv="sudo vim"

# Python aliases
alias python="python3"

# Quickemu script for Qemu Virgil
alias quickemu="/home/$USER/development/git-clones/quickemu/./quickemu"

# Git/Github aliases
alias ga="git add"
alias gp="git push"
alias gc="git commit -am"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gst="git status"