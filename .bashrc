
#
# ~/.bashrc
#
# This is the initialization file for bash, and is read each time an instance of
# your shell executes. A shell starts up, for example, when you open a new xterm
# window, remotely log on to another machine, or type 'bash' or 'sh' to start a
# new shell explicitly.
#
# Refer to bash(1) for more information.
#
# The shell treats lines beginning with # as comments.
#
# EDIT THIS FILE to customize *only* shell-specific options for bash (e.g.
# prompt). All other shell options go in ~/.environment.
#

# Define the shell-independent environment commands. See hooks(7) for more
# information.
setenvvar () { eval $1=\"$2\"; export $1; }
setenvifnot () { if eval [ -z \"\$$1\" ]; then eval $1=\"$2\"; export $1; fi; }
pathappend () { if eval expr ":\$$1::" : ".*:$2:.*" >/dev/null 2>&1; then true; else eval $1=\$$1:$2; fi; }
pathappendifdir () { if [ -d "$2" ]; then pathappend $*; fi; }
pathprepend () { if eval expr ":\$$1::" : ".*:$2:.*" >/dev/null 2>&1; then true; else eval $1=$2:\$$1; fi; }
pathprependifdir () { if [ -d "$2" ]; then pathprepend $*; fi; }
shellcmd () { _cmd=$1; shift; eval "$_cmd () { command $* \"\$@\"; }"; }
sourcefile () { if [ -f "$1" ]; then . $1; fi; }

# Load personal environment settings.
sourcefile $HOME/.environment

# Run the coursehooks.
sourcefile /u/system/hooks/sh/identities

# If this is a non-interactive shell, exit. The rest of this file is loaded
# only for interactive shells.
if [ -z "$PS1" ]; then
	return
fi

# Set tty options.
stty sane

# Set the shell to prevent programs from dumping core.
ulimit -Sc 0

# Set the prompt.
PS1="\[`tput rev`\]\h\[`tput sgr0`\] \w \$ ";






# .bashrc
export HISTSIZE="4000"
export PATH=$PATH:/.local/bin
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PATH=/home/dan/.local/bin:$PATH

# User specific aliases and functions

alias ..='cd ..'
alias a='./a.out'
alias ag='sudo apt-get'
alias c='clear'
alias cb='vim ~/.bashrc'
alias ch='chmod 700'
alias cv='vim ~/.vimrc'
alias chromium='chromium-browser'
alias chrome='/opt/google/chrome/chrome'
alias decrypt='gpg'
alias encrypt='gpg -c'
alias g='git'
alias gc='clear && gcc -g'
alias gcsl='clear && gcc -shared -fPIC'
alias gd='clear && gdb'
alias gda='clear && gdb ./a.out'
alias j='/home/ec2-user/julia-binary/usr/bin/julia-readline'
alias julia='/home/ec2-user/julia-binary/usr/bin/julia-readline'
alias la='ls --color=auto -a'
alias l='ls --color=auto'
alias lsa='ls -la --color=auto'
alias mk='mkdir'
alias pip='cd ~/.local/bin && echo "choose the correct pip for py version"'
alias python='/usr/bin/python3'
alias py='/usr/bin/python3'
alias python2='/usr/bin/python'
alias py2='/usr/bin/python'
alias v='vim'
alias ls='ls --color=auto'
alias t='touch'
alias tor='~/tor/startTor'
alias wh='which'

