#!/bin/bash
mkdir ~/.vim/backups
mkdir ~/.vim/swaps
mkdir ~/.vim/undo

# this downloads vundle and puts it in the same place.
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
