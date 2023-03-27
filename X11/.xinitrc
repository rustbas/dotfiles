# cyrillic font
export LC_CTYPE="ru_RU.UTF-8"

xrdb -merge ~/.config/X11/.Xresources
urxvtd -o -q -r
udiskie &
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&
setxkbmap -layout us,ru && setxkbmap -option 'grp:win_space_toggle'
exec i3
