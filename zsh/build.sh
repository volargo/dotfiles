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
#       CREATED: 08/06/2018 10:18:22 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

sudo apt install zsh wget
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -

sed -i "s/robbyrussell/pygmalion/g" ~/.zshrc
