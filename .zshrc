source ~/dotfiles/antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/

antigen theme jdavis/zsh-files themes/jdavis

antigen bundle git
antigen bundle zsh-users/zsh-syntax/highlighting

alias rm='rm -iv'
alias cp='cp -i'
alias mv='mv -iv'
alias mkdir='mkdir -v'

alias ..='cd ..'
alias ls='ls -vG'
alias ll='ls -alvG' 
alias tree='tree -Csuh'
