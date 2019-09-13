export EDITOR=nano
export VISUAL=vim

export PAGER=less

export CLICOLOR=1
export LSCOLORS="Gxfxcxdxbxegedabagacad"

export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true

export ZSH_AUTOSUGGEST_USE_ASYNC=true

export DISTRIB_ID=`( source /etc/os-release; echo $ID )`

export PROJECTS=$HOME/Projects

export GOPATH=$PROJECTS/go
export PATH=$GOPATH/bin:$PATH
