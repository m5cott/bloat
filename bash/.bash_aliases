# ------------------------------------------------------------------------
#
# Created by: Michael Scott
# Description: This file holds all my bash_aliases configurations for GNU/Linux Systems
# Updated on: 8.25.2020
#
# ------------------------------------------------------------------------

# Alias - Make Terminal Great Again!
# ------------------------------------------------------------------------

alias sudo='sudo '
alias mkdir='mkdir -pv' # Create intermediate dir as required & verbose
alias less='less -FSRXc'
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias ~="cd ~"
alias sv='sudo vim'

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# Verbosity and settings that you pretty much just always are going to want.
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	mkd="mkdir -pv" \
	ll="ls -FGlAhp --color=auto" \
	la="ls -A --color=auto" \
	l="ls -CF --color=auto" \
	less="less -FSRXc" \
	c="clear" \
	ffmpeg="ffmpeg -hide_banner"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

# Directory Shortcuts
alias \
    cac=${XDG_CACHE_HOME:-$HOME/.cache} \
    cf=${XDG_CONFIG_HOME:-$HOME/.config} \
    D=${XDG_DOWNLOAD_DIR:-$HOME/Downloads} \
    d=${XDG_DOCUMENTS_DIR:-$HOME/Documents} \
    dt=${XDG_DATA_HOME:-$HOME/.local/share} \
    h=$HOME \
    m=${XDG_MUSIC_DIR:-$HOME/Music} \
    mn=/mnt \
    p=${XDG_PICTURES_DIR:-$HOME/Pictures} \
    pp=$HOME/Projects \
    pg=$HOME/Projects/github \
    sc=$HOME/.local/bin \
    src=$HOME/.local/src \
    vv=${XDG_VIDEOS_DIR:-$HOME/Videos}

# Python aliases
alias python='python3'

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	YT="youtube-viewer" \
	sdn="sudo shutdown -h now" \
    rbn="sudo reboot" \
	f="$FILE" \
	e="$EDITOR" \
	v="$EDITOR" \
    vim="$EDITOR" \
	sup="sudo apt update" \
    sug="sudo apt upgrade" \
    python="python3" \
	z="zathura" \
    shred="shred -zuvn 5"

# Rust aliases
alias cn='cargo new'
alias cb='cargo build'
alias cbr='cargo build --release'
alias cr='cargo run'

# Git commands
alias \
	g="git" \
	ga="git add" \
 	gp="git push" \
    gpa="git push && git push home" \
 	gc="git commit -m" \
 	gcb="git checkout -b" \
 	gco="git checkout" \
	gst="git status"

# Ubuntu commands
alias \
	quickemu="/home/mcsco/.local/src/quickemu/./quickemu"

# youtube-dl aliases
# Making youtube-dl use python3 instead of python2
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
