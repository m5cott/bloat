#!/bin/bash

function linkDotfiles {
    configsDir=$(pwd)
    dest="${HOME}/${1}"
    dateStr=$(date +%Y-%m-%d-%H%M)

    if [ -h ~/${1} ]; then
        # Existing symlink 
        echo "Removing existing symlink: ${dest}"
        rm ${dest} 

    elif [ -f "${dest}" ]; then
        # Existing file
        echo "Backing up existing file: ${dest}"
        mv ${dest}{,.${dateStr}}

    elif [ -d "${dest}" ]; then
        # Existing dir
        echo "Backing up existing dir: ${dest}"
        mv ${dest}{,.${dateStr}}
        fi

    echo "Creating new symlink: ${dest}"
    ln -s ${configsDir}/${1} ${dest}
}

cd bash && linkDotfiles .bashrc
linkDotfiles .bash_aliases
cd ../gitconfig && linkDotfiles .gitconfig
linkDotfiles .gitmessage
cd .. && linkDotfiles scripts
cd vim && linkDotfiles .vimrc
linkDotfiles .vim