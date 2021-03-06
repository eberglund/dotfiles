source ~/dotfiles/antigen/antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/

antigen theme jdavis/zsh-files themes/jdavis

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

alias rm='rm -iv'
alias cp='cp -i'
alias mv='mv -iv'
alias mkdir='mkdir -v'

alias ..='cd ..'
alias ls='ls -vG --color'
alias ll='ls -alvG --color' 
alias tree='tree -Csuh'

alias sudo='sudo -E'

typeset -U path

export GOPATH=~/workspace/go
path=($path /usr/bin $GOPATH/bin)

export VISUAL=vim
export EDITOR="$VISUAL"
