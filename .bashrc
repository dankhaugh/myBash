# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias ..='cd ..'
alias a='./a.out'
alias c='clear'
alias cb='vim ~/.bashrc'
alias ch='chmod 700'
alias cv='vim ~/.vimrc'
alias g='git'
alias gc='clear && gcc -g'
alias gcsl='clear && gcc -shared -fPIC'
alias gd='clear && gdb'
alias gda='clear && gdb ./a.out'
alias j='/home/ec2-user/julia-binary/usr/bin/julia-readline'
alias julia='/home/ec2-user/julia-binary/usr/bin/julia-readline'
alias l='ls'
alias py='python3'
alias v='vim'
