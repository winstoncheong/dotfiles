#! /bin/bash

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Add texlive to path 
PATH=/usr/local/texlive/2014/bin/i386-linux:$PATH 

# BASH PROMPT
# PS1='(\[\e[1;31m\]\j\[\e[0m\]) \u \[\e[1;34m\]\w\[\e[0m\] \[\e[0;32m\]\$\[\e[0m\] '
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ ' # From Kali
# PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ ' # Kali without color
PS1='\u@\h [\w]\$ '

export TERM='xterm-256color'

# History file stuff
HISTSIZE=1000
HISTFILESIZE=2000
# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth
# Append to history file when exiting instead of overwriting it
shopt -s histappend 



# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Use the pattern "**" in a pathname expansion context to
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# Aliases {{{
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lar="ls -laR"
alias up='cd ..'

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


# Some SSH thing {{{

SSH_ENV=$HOME/.ssh/environment

# start the ssh-agent
function start_agent {
	echo "Initializing new SSH agent..."
	# spawn ssh-agent
	/usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	echo succeeded
	chmod 600 "${SSH_ENV}"
	. "${SSH_ENV}" > /dev/null
	/usr/bin/ssh-add
}

if [ -f "${SSH_ENV}" ]; then
	. "${SSH_ENV}" > /dev/null
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
		start_agent;
	}
else
	start_agent;
fi
