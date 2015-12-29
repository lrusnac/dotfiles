#!/bin/bash
if [ $# -eq 0 ]; then
    CONFIG="all"
else
    CONFIG=$1
fi
if [ $CONFIG == 'all' -o $CONFIG == 'vim' ]; then
    sh ~/dotfiles/bin/installvimconfig.sh
    cp ~/.vimrc{,_bk}
    cp .vimrc ~/.vimrc
    echo "Copied vimrc to ~/.vimrc. Old vimrc copied to ~/.vimrc_bk"
fi

