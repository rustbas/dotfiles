xrdb -merge ~/.config/X11/.Xresources
urxvtd -o -q -r
udiskie &
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&
exec i3
