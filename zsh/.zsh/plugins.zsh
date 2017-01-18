zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"

# Remembering all the aliases is hard sometimes...
zplug "djui/alias-tips"

zplug "plugins/ssh-agent", from:oh-my-zsh, if:"which ssh-agent"
zplug "plugins/gpg-agent", from:oh-my-zsh, if:"which gpg-agent"

# Git
zplug "plugins/git", from:oh-my-zsh
zplug "so-fancy/diff-so-fancy", as:command
zplug "rimraf/k"

# Ruby
zplug "postmodern/chruby", from:github, use:"share/chruby/*.sh"
zplug "rmcfadzean/zsh-ruby-install"
zplug "plugins/ruby", from:oh-my-zsh
zplug "plugins/gem", from:oh-my-zsh
zplug "plugins/chruby", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh

# Node
zplug "lukechilds/zsh-nvm"

# Docker
zplug "plugins/docker", from:oh-my-zsh, if:"which docker"
zplug "plugins/docker-compose", from:oh-my-zsh, if:"which docker-compose"

# Tmux
zplug "plugins/tmux", from:oh-my-zsh, if:"which tmux"

# Fast folder jumps
zplug "rupa/z", use:z.sh

# JSON formatter. ex: `curl example.com/users.json | jq`
zplug "stedolan/jq", \
    as:command, \
    rename-to:jq, \
    from:gh-r

zplug "b4b4r07/enhancd", use:enhancd.sh

# A much nicer Ctrl-R history searcher
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf, use:"*linux*amd64*"
zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
zplug "junegunn/fzf", use:"shell/*.zsh"

# Theme
# zplug "cusxio/delta-prompt", use:delta.zsh
zplug "mafredri/zsh-async", from:github
zplug "intelfx/pure", use:pure.zsh, from:github, as:theme
