# zinit light rimraf/k

# Ansible
zinit snippet OMZP::ansible

# Remembering all the aliases is hard sometimes...
zinit load djui/alias-tips

# exa
## https://github.com/ogham/exa
zinit ice wait lucid as"program" from"gh-r" mv"bin -> exa" pick"exa/exa"
zinit light ogham/exa

# Git

# zinit snippet OMZ::lib/git.zsh
zinit snippet OMZP::git
# github cli
## https://github.com/cli/cli
zinit ice wait lucid as"program" from"gh-r" pick"usr/bin/gh"
zinit light cli/cli

# git open
## https://github.com/paulirish/git-open
zinit ice wait lucid
zinit light paulirish/git-open

# Node
zinit snippet OMZP::yarn
zinit snippet OMZP::npm

zinit wait lucid atload"zicompinit; zicdreplay" atclone'./zplug.zsh' blockf for \
  "g-plane/zsh-yarn-autocompletions"

# Vagrant
zinit snippet OMZP::vagrant

# Terraform
zinit ice wait'4' lucid as"completion"
zinit snippet OMZ::plugins/terraform/_terraform
zinit snippet OMZP::terraform
zinit ice wait'2' lucid as"program" from:"gh-r" has"terraform"
zinit light terraform-linters/tflint

# Docker
zinit snippet OMZP::docker-compose

# AWS
zinit snippet OMZP::aws

# Tmux
zinit snippet OMZP::tmux

# A much nicer Ctrl-R history searcher
zinit snippet OMZP::fzf

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
zinit snippet OMZP::rsync

zinit ice as"command" from"gh-r" pick"tokei/tokei"
zinit light XAMPPRocky/tokei

zinit ice as"command" from"gh-r" mv"hyperfine* -> hyperfine" pick"hyperfine/hyperfine"
zinit light sharkdp/hyperfine

zinit ice from"gh-r" as"program"
zinit light junegunn/fzf-bin

zinit ice as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

zinit ice depth"1" wait lucid from"gh-r" as"program" mv"delta* -> delta" pick"delta/delta"
zinit light dandavison/delta

zinit ice as"command" from"gh-r" mv"zoxide* -> zoxide" \
  pick"zoxide/zoxide" atload"source <(zoxide init zsh --no-aliases)"
zinit light ajeetdsouza/zoxide

# DUF - a modern df
zinit ice wait lucid as"program" mv"duf* -> duf" pick"duf/duf" from"gh-r" bpick'*.tar.gz'
zinit light muesli/duf

# dust - a modern du
zinit ice wait lucid as"program" mv"dust*/dust -> dust" pick"dust" from"gh-r"
zinit light bootandy/dust

# xh - a nicer http client
zinit ice wait lucid as"program" mv"xh* -> xh" pick"xh/xh" from"gh-r"
zinit light ducaale/xh

# glow - CLI markdown reader
zinit ice wait lucid as"program" pick"glow*/glow" from"gh-r" bpick'*.tar.gz'
zinit light charmbracelet/glow

# Keep this one last so we are sure we get our compinit etc. yay turbo.
zinit wait lucid for \
  atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
  zdharma-continuum/fast-syntax-highlighting \
  blockf \
  zsh-users/zsh-completions \
  atload"!_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions

# asdf - maybe use this going forward instead of FNM? added for PHP version management
zinit ice as'program' src'asdf.sh'
zinit light asdf-vm/asdf

# PHP :(
zinit wait lucid for \
  OMZP::wp-cli \
  OMZP::composer

zinit ice wait lucid as"program" from"gh-r" bpick"*.tar.gz" mv"task* -> task" pick"task/task"
zinit light "go-task/task"
