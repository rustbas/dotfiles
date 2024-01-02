#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias time="/usr/bin/time"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1="\[\033[38;5;9m\]\h\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\] [ \[$(tput sgr0)\]\[\033[38;5;14m\]\W\[$(tput sgr0)\] ] > \[$(tput sgr0)\]"
PS1='\w $(__git_ps1 "(%s) ")> '

# aliases
source $HOME/.aliases

# pretty git
source /home/rustam/git-completion.bash
source /home/rustam/git-prompt.sh

# force load
# [[ -f ~/.bash_profile ]] && source $HOME/.bash_profile

# dwm
# pgrep dwm > /dev/null || exec startx 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/rustam/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

