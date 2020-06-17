alias ll="k -h"
alias ls="k -h"
alias lsl="k -h"

alias cp="cp -r"
alias scp="scp -r"
alias mkdir="mkdir -p"
alias v="vim"
alias vi="vim"
alias c="code ."
alias emacs="vim"
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'

alias systemctl="sudo systemctl"

alias p="cd $PROJECTS"

alias path='echo -e ${PATH//:/\\n}'
alias reload!='. ~/.zshrc'

alias remoteip="dig +short myip.opendns.com @resolver1.opendns.com"

alias serve="python3 -m http.server 8005"

# usage: rmd README.md
rmd () {
  pandoc $1 | lynx -stdin
}
