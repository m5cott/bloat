# ------------------------------------------------------------------------
#
# Created by: Michael Scott
# Description: .bash_profile for MacOS
# Updated on: 8.27.2020
#
# ------------------------------------------------------------------------

# Allows you to cd into directory merely by typing the directory name.
# ------------------------------------------------------------------------
shopt -s autocd

# Change Prompt
# ------------------------------------------------------------------------
#export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
#export PS2="| => "

# Set PATH to Homebrew programs
#export PATH="/usr/local/bin:$PATH"

# Improve Homebrew security
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha

# Set Default Editor
# ------------------------------------------------------------------------
export EDITOR=/usr/local/bin/vim

# Add color to terminal
# Colors for Light Terminal Themes
# ------------------------------------------------------------------------
# export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad

# Colors for Dark Terminal Themes
# ------------------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Enable bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

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
alias f='open -a Finder ./'
alias textedit='open -a TextEdit'
alias ~="cd ~"
alias c='clear'
alias v='vim'
alias sv='sudo vim'
alias ga='git add'
alias gp='git push'
alias gc='git commit -am'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gst='git status'
alias yt='youtube-dl -o "%(uploader)s-%(title)s.%(ext)s" -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" --add-metadata -icv'    # Download video link
alias yta='youtube-dl -o "%(uploader)s-%(title)s.%(ext)s" -xic -f bestaudio/best --add-metadata'  # Download only audio

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
