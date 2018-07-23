#!/bin/bash -
#===============================================================================
#
#          FILE: i3-style.sh
#
#         USAGE: ./i3-style.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 07/23/2018 10:13:24 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

THEME=(
    'archlinux'
    'base16-tomorrow'
    'debian'
    'deep-purple'
    'default'
    'flat-gray'
    'gruvbox'
    'icelines'
    'lime'
    'mate'
    'okraits'
    'purple'
    'seti'
    'slate'
    'solarized'
    'tomorrow-night-80s'
    'ubuntu'
)

gen_list() {
    for i in ${THEME[@]}
    do
        echo ${i}
    done
}

main() {
    platform=$( (gen_list) | rofi -dmenu -matching fuzzy -only-match -location 0 -p "i3-style theme" )
}

main

exit 0
