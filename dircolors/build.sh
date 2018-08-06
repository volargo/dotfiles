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
#       CREATED: 08/06/2018 06:03:41 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

cp ./dircolors ~/.dircolors/dircolors

echo "eval `dircolors ~/.dircolors`" >> ~/.zshrc
echo "export TERM=xterm-256color" >> ~/.zshrc
source ~/.zshrc
