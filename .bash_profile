export PATH=$PATH:~/bin
# added by Anaconda3 4.2.0 installer
# export PATH="//anaconda/bin:$PATH"
export LSCOLORS=GxFxCxDxBxegedabagaced
export CLICOLOR=1
export EDITOR=vi

alias ..='cd ..'
alias ...='cd ..; cd ..'
alias bi='brew install '
alias br='git branch'
alias cb='vim ~/.bash_profile'
alias ch='chmod 700'
alias cl='tmux clear; clear;'
alias clip='pbcopy'
alias cv='vim ~/.vimrc'
alias d='cd'
alias decrypt='gpg'
alias encrypt='gpg -c'
alias f='fg'
alias g='git'
alias g1='git g1'
alias gr='grep -I -n -H'
alias gr='grep -InH --color=always'
alias grr='grep -IrnH --color=always'
alias la='ls -aG'
alias l='ls -G'
alias less='less -r'
alias ls='ls -G'
alias lsa='ls -l -aG'
alias mk='mkdir'
alias psa='ps aux | grep '
alias pd='pwd'
alias python='python -B'
alias pyt='pytest'
alias v='vim'
alias t='touch'
alias wh='which'

#tmux aliases
alias tmuxls='tmux list-sessions'
alias tmuxat='tmux attach -t'
alias up='tmux resize-pane -U' 
alias down='tmux resize-pane -D' 
alias left='tmux resize-pane -L' 
alias right='tmux resize-pane -R' 

alias lockBash='sudo chflags schg ~/.bash_profile'
alias unlockBash='sudo chflags noschg ~/.bash_profile'

alias crl='crontab -l'
alias cr='crontab'

alias fl='flake8 */*.py'

# add openvpn
export PATH=/usr/local/Cellar/openvpn/2.3.14/sbin/:$PATH

export PYTHONDONTWRITEBYTECODE=1

alias py='python3'

alias ga='git add'
alias gd='git diff'
alias gu='git uno'
alias gco='git checkout'

alias dn='while true; do say done; done;'

alias json='python -m json.tool'
alias watch='watch --color'

alias postgres_start='pg_ctl -D /usr/local/var/postgres start'
alias postgres_stop='pg_ctl -D /usr/local/var/postgres stop'

alias al='alembic'
alias alh='alembic history'
alias alc='alembic current'

alias todo='grep -R TODO *'

alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk- 11.jdk/Contents/Home/'
