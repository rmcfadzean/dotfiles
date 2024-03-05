alias cp="cp -r"
alias scp="scp -r"
alias mkdir="mkdir -p"
alias v="vim"
alias vi="vim"
alias c="code ."
alias emacs="vim"
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'

alias cloc='tokei'

alias p="cd $PROJECTS"

alias path='echo -e ${PATH//:/\\n}'
alias reload!='. ~/.zshrc'

alias remoteip="dig +short myip.opendns.com @resolver1.opendns.com"

alias serve="python3 -m http.server 8005"

alias z='__zoxide_z'
alias ziz='__zoxide_zi'

# One-liner to erve the current directory 
alias servedir='python -m http.server 8000'

alias dmesg='journalctl --dmesg -o short --no-hostname --no-pager'

# usage: rmd README.md
rmd() {
  pandoc $1 | lynx -stdin
}

# The official github cli client uses `gh` so this should not be that.
gho() {
  file=${1:-""}
  git_branch=${2:-$(git symbolic-ref --quiet --short HEAD)}
  git_project_root=$(git config remote.origin.url | sed "s~git@\(.*\):\(.*\)~https://\1/\2~" | sed "s~\(.*\).git\$~\1~")
  git_directory=$(git rev-parse --show-prefix)
  xdg-open ${git_project_root}/tree/${git_branch}/${git_directory}${file}
}

if [[ -x "$(command -v bat)" ]]; then
  alias cat="bat"
fi

if [[ -x "$(command -v eza)" ]]; then
  alias ll="eza -l --git"
  alias ls="eza -l --git"
  alias lsl="eza -l --git"
fi

if [[ -x "$(command -v dust)" ]]; then
  alias du="dust"
fi

if [[ -x "$(command -v duf)" ]]; then
  alias df="duf"
fi