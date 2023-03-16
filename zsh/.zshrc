source "$XDG_CONFIG_HOME/zsh/aliases"

setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

autoload -Uz compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)

#autoload -Uz prompt_purification_setup; prompt_purification_setup
PROMPT="%F{red}%n%f@%F{10}%1d%f > "

# Push the current directory visited on to the stack.
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack.
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd.
setopt PUSHD_SILENT

# vi mode
bindkey -v
export KEYTIMEOUT=1

autoload -Uz cursor_mode && cursor_mode

# Vim Mapping for completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Editing Commands In Neovim
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Jumping To A Parent Directory
source ~/dotfiles/zsh/external/bd.zsh

# Custom Scripts
source $DOTFILES/zsh/scripts.sh

# The Fuzzy Finder fzf
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# Autostart i3
if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# clear rebind
bindkey -r '^l'
bindkey -r '^g'
bindkey -s '^g' 'clear\n'

#  ╭───────────╮
#  │ MINICONDA │
#  ╰───────────╯

[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/rustam/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/rustam/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/rustam/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/rustam/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

