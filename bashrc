#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ "$COLORTERM" == "gnome-terminal" ]; then
    export TERM=xterm-256color
fi 
stty stop undef
stty start undef
