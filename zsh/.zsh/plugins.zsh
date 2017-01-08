zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"

zplug "rupa/z", use:z.sh

# Remembering all the aliases is hard sometimes...
zplug "djui/alias-tips"

zplug "plugins/ssh-agent", from:oh-my-zsh, if:"which ssh-agent"

zplug "plugins/git", from:oh-my-zsh

zplug "plugins/ruby", from:oh-my-zsh
zplug "plugins/gem", from:oh-my-zsh
zplug "plugins/chruby", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh

zplug "creationix/nvm", use:nvm.sh

zplug "plugins/docker", from:oh-my-zsh, if:"which docker"
zplug "plugins/docker-compose", from:oh-my-zsh, if:"which docker-compose"

# Theme
# zplug "cusxio/delta-prompt", use:delta.zsh
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
