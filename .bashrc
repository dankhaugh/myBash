# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias g='git'
alias v='vim'
alias c='clear'
alias l='ls'
alias gc='clear && gcc -g'
alias a='./a.out'
alias gd='clear && gdb'
alias gda='clear && gdb ./a.out'
alias j='/home/ec2-user/julia-binary/usr/bin/julia-readline'
alias julia='/home/ec2-user/julia-binary/usr/bin/julia-readline'
alias py='python3'
alias ch='chmod 700'
