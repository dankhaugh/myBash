# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export EDITOR=vim
export LD_LIBRARY_PATH="/home/ec2-user/tiptop:/usr/lib"

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
alias jc='gcc -o a -fPIC -shared'
alias julia='/home/ec2-user/julia-binary/usr/bin/julia-readline'
alias l='ls'
alias la='ls -la'
alias py='python3'
alias v='vim'
alias wh='which'
