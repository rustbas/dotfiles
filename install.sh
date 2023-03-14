#!/bin/bash

########
# nvim #
########

mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"
ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim/init.vim"

# vim.plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Nvim configured!"

##############
# Xresources #
##############

rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

echo "Xresources configured!"

######
# i3 #
######

rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"

echo "i3 configured!"

#######
# zsh #
#######

mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME"

ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

echo "zsh configured!"
#########
# Fonts #
#########

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

echo "fonts configured!"
#########
# Dunst #
#########

mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc"

echo "Dunst configured!"
########
# tmux #
########

mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

[ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ] \
&& git clone https://github.com/tmux-plugins/tpm \
"$XDG_CONFIG_HOME/tmux/plugins/tpm"

echo "tmux configured!"
#########
# tmuxp #
#########

rm -r "$XDG_CONFIG_HOME/tmuxp"
ln -s "$DOTFILES/tmuxp" "$XDG_CONFIG_HOME"

echo "tmuxp configured!"

#  ╭────╮
#  │ lf │
#  ╰────╯

mkdir "$XDG_CONFIG_HOME/lf/lfrc"
ln -s "$DOTFILES/lf/lfrc.example" "$XDG_CONFIG_HOME/lf/lfrc"

#  ╭──────────╮
#  │ NEWSBOAT │
#  ╰──────────╯

mkdir -p "$XDG_CONFIG_HOME/newsboat"
ln -s "$DOTFILES/newsboat/urls" "$XDG_CONFIG_HOME/newsboat/urls"
ln -s "$DOTFILES/newsboat/config" "$XDG_CONFIG_HOME/newsboat/config"

#  ╭─────────╮
#  │ NEOMUTT │
#  ╰─────────╯

mkdir -p "$XDG_CONFIG_HOME/neomutt"
ln -s "$DOTFILES/neomutt/neomuttrc" "$XDG_CONFIG_HOME/neomutt/neomuttrc"

#  ╭─────╮
#  │ MPV │
#  ╰─────╯

mkdir -p "$XDG_CONFIG_HOME/mpv"
ln -s $DOTFILES/mpv/mpv.conf $XDG_CONFIG_HOME/mpv/mpv.conf


#  ╭───────────────╮
#  │ NCMPCPP & MPD │
#  ╰───────────────╯

mkdir -p $HOME/.mpd
touch $HOME/.mpd/mpd.db $HOME/.mpd/mpd.log $HOME/.mpd/mpd.pid
ln -s $DOTFILES/mpd/mpd.conf $HOME/.mpd/mpd.conf
ln -s $DOTFILES/ncmpcpp $HOME/.ncmpcpp
