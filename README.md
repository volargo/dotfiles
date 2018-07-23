# About
A fast and easy-to-use configuare on the Debian Linux.

## Dependencies
* [i3-wm](https://github.com/i3/i3): improved dynamic tiling window manager.
* [i3-gaps](https://github.com/Airblader/i3): a tiling window manager for Linux.
* [i3blocks](https://github.com/vivien/i3blocks): highly flexible status line for the i3 window manager.
* [i3-style](https://github.com/acrisci/i3-style): make your i3 config a little more stylish.
* [i3lock-color](https://github.com/PandorasFox/i3lock-color): improved screen locker.
* [j4-dmenu-desktop](https://github.com/enkore/j4-dmenu-desktop): faster replacement for i3-dmenu-desktop.
* [rofi](https://github.com/DaveDavenport/rofi): window switcher, run dialog and dmenu replacement.
* [deepin-screenshot](https://github.com/linuxdeepin/deepin-screenshot): screenshots application.

## Screenshots
* i3-wm ![i3-wm](screenshots/dotfiles-i3wm.png)

* SpaceVim ![spacevim](screenshots/dotfiles-spacevim.png)

## Usage
**Keybindings**

|Key                    |Action                             |
|:----------------------|:----------------------------------|
|`$Mod+Return`          |Start a terminal|
|`$Mod+q`               |Kill a focused window|
|`$Mod+d`               |Application launcher|
|`$Mod+m`               |Desktop file application launcher|
|`$Mod+i`               |Start j4-dmenu-desktop|
|`$Mod+t`               |Select rofi theme|
|`$Mod+n`               |Notes|
|`$Mod+g`               |Web search|
|`$Mod+Tab`             |Window Switcher|
|`$Mod+Print`           |Screenshots|
|`$Mod+r`               |Resize application window|
|`Pause`                |System power controler|

* Change i3-wm themes, use `i3-style` do it. Use `i3-style -l` command get more i3-wm themes.
> For example (select debian theme):
```
$ i3-style debain -o ~/.config/i3/config --reload
```

* Use `Pause` key to system power contrl. Modify the power controller can pass the custom i3 configuration file, open ` i3` configuration file and find below code then change keybindings.
```shell
mode "$mode_system" {
    bindsym L exec bash -f ~/.config/i3/scripts/lock.sh, exec sleep .1 && exec xset dpms force off, mode "default"
    bindsym E exec i3-msg exit
    bindsym P exec systemctl poweroff
    bindsym R exec systemctl reboot
    bindsym H exec lock && systemctl hibernate
    bindsym S exec lock && systemctl suspend
    bindsym Escape mode "default"
    bindsym Return mode "default"
}
bindsym Pause mode "$mode_system"
```

## Custom keybindings
If use custom shortcuts, need to open i3-wm configure file, find belows code and redefine shortcuts.
```shell
# start a terminal
bindsym $mod+Return exec terminator
# kill focused window
bindsym $mod+q kill
# all applications
bindsym $mod+d exec rofi -show run
# menu applications
bindsym $mod+m exec rofi -show drun
# j4-dmenu-desktop
bindsym $mod+i exec j4-dmenu-desktop
# switch workspace
bindsym $mod+Tab exec rofi -show window
# rofi theme selector
bindsym $mod+t exec rofi-theme-selector
# rofi monitor switch
bindsym $mod+p exec bash ~/.config/rofi/scripts/monitor_layout.sh
# rofi notes
bindsym $mod+n exec bash ~/.config/rofi/scripts/rofi-notes.sh
# rofi web search
bindsym $mod+g exec bash ~/.config/rofi/scripts/web-search.sh
# quick screenshot
bindsym $mod+Print exec deepin-screenshot
```

## Install (building...)
1. Clone this repo somewhere and run `install.sh` scripts with `root`.
```Shell
$ git clone git@github.com:volargo/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ chmod +x install.sh
$ ./install.sh
```

## Support
More details view my blog [www.volargo.com](https://www.volargo.com)
