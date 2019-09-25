
# Two regular plugins loaded without tracking.
zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting

zplugin light rimraf/k

# Ansible
zplugin snippet OMZ::plugins/ansible/ansible.plugin.zsh

# Remembering all the aliases is hard sometimes...
zplugin load djui/alias-tips

# Git
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin ice as"program"
zplugin snippet https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy

# Node
zplugin load lukechilds/zsh-nvm
zplugin snippet OMZ::plugins/yarn/yarn.plugin.zsh

# Vagrant
zplugin ice as"completion"
zplugin snippet OMZ::plugins/vagrant/_vagrant

# Docker
zplugin ice as"completion"
zplugin snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker
zplugin ice as"completion"
zplugin snippet https://github.com/docker/compose/blob/master/contrib/completion/zsh/_docker-compose

zplugin snippet OMZ::plugins/docker-compose/docker-compose.plugin.zsh

# Tmux
zplugin snippet OMZ::plugins/tmux/tmux.plugin.zsh

# Fast folder jumps
zplugin load agkozak/zsh-z

# A much nicer Ctrl-R history searcher
zplugin snippet OMZ::plugins/fzf/fzf.plugin.zsh

zplugin light "b4b4r07/enhancd"

# Theme
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

# Misc
zplugin light chrissicool/zsh-256color
zplugin light hlissner/zsh-autopair
zplugin light mafredri/zsh-async

# OMZ plugins
zplugin snippet OMZ::plugins/rsync/rsync.plugin.zsh
