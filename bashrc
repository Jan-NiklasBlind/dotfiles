#
# ~/.bashrc
#

export SUDO_EDITOR=vim
export EDITOR=vim
export VISUAL=vim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias b='echo -e "enter brightness:\n"; read val; xrandr  --output eDP-1 --brightness "${val}"'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

# # i3lock
# alias i3lock='i3lock -c 000000'

PS1='[\u@\h \W]\$ '

# export TERM=xterm-256color
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
# export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
export PATH=$PATH:/home/nika/.local/bin
# export EDITOR=vim
# export SUDO_EDITOR=vim
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
source /usr/bin/virtualenvwrapper.sh

alias mount='udisksctl mount -b'
alias umount='udisksctl unmount -b'
set -o vi

/usr/bin/setxkbmap -option "caps:escape"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
