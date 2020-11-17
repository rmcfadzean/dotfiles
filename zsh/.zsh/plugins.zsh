
# Two regular plugins loaded without tracking.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

zinit light rimraf/k

# Ansible
zinit snippet OMZ::plugins/ansible/ansible.plugin.zsh

# Remembering all the aliases is hard sometimes...
zinit load djui/alias-tips

# Git
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit ice as"program"
zinit snippet https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy

# Node
zinit load lukechilds/zsh-nvm
zinit snippet OMZ::plugins/yarn/yarn.plugin.zsh
zinit ice atload"zicompinit; zicdreplay" atclone'./zplug.zsh'
zinit light g-plane/zsh-yarn-autocompletions

# Vagrant
zinit ice as"completion"
zinit snippet OMZ::plugins/vagrant/_vagrant

# Docker
zinit ice as"completion"
zinit snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker
zinit ice as"completion"
zinit snippet https://github.com/docker/compose/blob/master/contrib/completion/zsh/_docker-compose

zinit snippet OMZ::plugins/docker-compose/docker-compose.plugin.zsh

# AWS
zinit ice as"completion"
zinit snippet OMZ::plugins/aws/aws.plugin.zsh

# Tmux
zinit snippet OMZ::plugins/tmux/tmux.plugin.zsh

# Fast folder jumps
zinit load agkozak/zsh-z

# A much nicer Ctrl-R history searcher
zinit snippet OMZ::plugins/fzf/fzf.plugin.zsh

zinit light "b4b4r07/enhancd"

# Theme
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

# Misc
zinit light chrissicool/zsh-256color
zinit light hlissner/zsh-autopair
zinit light mafredri/zsh-async

# OMZ plugins
zinit snippet OMZ::plugins/rsync/rsync.plugin.zsh
