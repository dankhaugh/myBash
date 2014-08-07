# .bashrc
export HISTSIZE="4000"
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

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
