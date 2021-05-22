zinit wait lucid for \
  atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
  zdharma/fast-syntax-highlighting \
  blockf \
  zsh-users/zsh-completions \
  atload"!_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions

zinit light rimraf/k

# Ansible
zinit snippet OMZ::plugins/ansible/ansible.plugin.zsh

# Remembering all the aliases is hard sometimes...
zinit load djui/alias-tips

# Git
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::plugins/git/git.plugin.zsh

# Node
## FNM
zinit wait lucid atload"zicompinit; zicdreplay" blockf for \
  "dominik-schwabe/zsh-fnm"
zinit snippet OMZ::plugins/yarn/yarn.plugin.zsh

# Direnv
zinit from"gh-r" as"program" mv"direnv* -> direnv" \
  atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' \
  pick"direnv" src="zhook.zsh" for \
  "direnv/direnv"

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

zinit ice lucid wait'!0'
zinit light 'b4b4r07/enhancd'
# Theme
## Starship prompt
zinit ice lucid from"gh-r" \
  as"command" pick"starship" \
  atload"!eval \$(starship init zsh)"
zinit light starship/starship

# Misc
zinit light chrissicool/zsh-256color
zinit ice wait lucid
zinit light hlissner/zsh-autopair
zinit light mafredri/zsh-async
zinit snippet OMZ::plugins/rsync/rsync.plugin.zsh

zinit ice as"command" from"gh-r" bpick"*linux-gnu*" pick"tokei/tokei"
zinit light XAMPPRocky/tokei

zinit ice as"command" from"gh-r" bpick"*linux-gnu*" mv"hyperfine* -> hyperfine" pick"hyperfine/hyperfine"
zinit light sharkdp/hyperfine

zinit ice from"gh-r" as"program"
zinit light junegunn/fzf-bin

zinit ice as"command" from"gh-r" bpick"*linux-gnu*" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

zinit ice depth"1" wait lucid from"gh-r" as"program" mv"delta* -> delta" pick"delta/delta"
zinit light dandavison/delta
