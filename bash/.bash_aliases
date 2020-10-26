# ------------------------------------------------------------------------
#
# Created by: Michael Scott
# Description: This file holds all my bash_aliases configurations for GNU/Linux Systems
# Updated on: 8.25.2020
#
# ------------------------------------------------------------------------

# Alias - Make Terminal Great Again!
# ------------------------------------------------------------------------

alias cp='cp -iv'   # Write Prompt to the standard error output & verbose
alias mv='mv -iv'   # Write Prompt to the standard error output & verbose
alias mkdir='mkdir -pv' # Create intermediate dir as required & verbose
alias ll='ls -FGlAhp'
alias la='ls -A'
alias l='ls -CF'
alias less='less -FSRXc'
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias ~="cd ~"
alias c='clear'
alias v='vim'
alias sv='sudo vim'

# Python aliases
alias python='python3'

# Quickemu script for Qemu Virgil
alias quickemu='/home/mcsco/development/git-clones/quickemu/./quickemu'

# Rust aliases
alias cn='cargo new'
alias cb='cargo build'
alias cbr='cargo build --release'
alias cr='cargo run'

# Git/Github aliases
alias ga='git add'
alias gp='git push'
alias gc='git commit -am'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gst='git status'

# youtube-dl aliases
# Making youtube-dl use python3 instead of python2
alias yt='python3 /usr/local/bin/youtube-dl -o "%(uploader)s-%(title)s.%(ext)s" -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" --add-metadata -icv'    # Download video link
alias yta='python3 /usr/local/bin/youtube-dl -o "%(uploader)s-%(title)s.%(ext)s" -xic -f bestaudio/best --add-metadata'  # Download only audio

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
}
