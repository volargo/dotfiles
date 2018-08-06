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
#       CREATED: 08/06/2018 06:03:24 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

if [ $UID -ne 0 ]; then
    echo "Permission denied: You must be root run this scripts."
    exit 1
else
    sudo apt install i3-wm i3block
fi

cp -r ./scripts ~/.config/i3 && cp ./config ~/.config/i3
cp -r ./wallpapers ~/.config/i3 && cp ./i3blocks ~/.config/i3
