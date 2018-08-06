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
#       CREATED: 08/06/2018 06:00:16 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

if [ $UID -ne 0 ]; then
    echo "Permission denied: You must be root run this scripts."
    exit 1
else
    sudo apt install rofi
fi

mkdir -p ~/.config/rofi
cp -r ./scripts ~/.config/rofi && cp ./config ~/.config/rofi
