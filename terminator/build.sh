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
#        AUTHOR: Volargo (hzlh), git@volargo.com
#  ORGANIZATION: NULL
#       CREATED: 08/07/2018 12:50:23 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

if [ $UID -ne 0 ]; then
    echo "Permission denied: You must be root run this scrips."
else
    sudo apt install terminator
fi

cp ./terminator/config ~/.config/terminator
