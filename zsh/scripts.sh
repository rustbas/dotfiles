#!/bin/zsh

compress() {
    tar cvzf $1.tar.gz $1
}


#  ╭───────────────────────╮
#  │ POMODORO BY BASHBUNNI │
#  ╰───────────────────────╯

# study stream aliases
# Requires https://github.com/caarlos0/timer to be installed. spd-say should ship with your distro

declare -A pomo_options
pomo_options["work"]="5"
pomo_options["break"]="10"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1
  # echo $val | lolcat
  timer ${pomo_options["$val"]}s
  echo "'$val' session done"
  fi
}

alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"


#  ╭──────────╮
#  │ GIT FUNC │
#  ╰──────────╯

git_all() {
    git add *
    if [ &# -eq 0 ]
    then
        git commit
    else
        git commit -m "$1"
    fi
    git pull
    git push
}
