#!/bin/bash -
#===============================================================================
#
#          FILE: build.sh
#
#         USAGE: ./build.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/05/2018 10:35:51 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

if [ $UID -ne 0 ]; then
    echo "Permission denied: You must be root run this scripts."
    exit 1
else
    sudo apt install vim vim-airline vim-airline-themes vim-gocompleter vim-fugitive
fi

# backup vimrc
cp -r ~/.vim ~/.vim_bk && cp ~/.vimrc ~/.vimrc_bk

# vim-plug install
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# apply dotfiles' vimrc
mkdir -p ~/.vim && cp ./vimrc ~/.vim
cp -r ./config ~/.vim && ln -s ~/.vim/vimrc ~/.vimrc
mkdir -p ~/.vim/extension && cp -r ./colors ~/.vim
