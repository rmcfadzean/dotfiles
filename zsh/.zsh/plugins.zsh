zinit light rimraf/k

# Ansible
zinit snippet OMZP::ansible

# Remembering all the aliases is hard sometimes...
zinit load djui/alias-tips

# Git
# zinit snippet OMZ::lib/git.zsh
zinit snippet OMZP::git

# Node
## FNM
zinit wait lucid atload"zicompinit; zicdreplay" blockf for \
  "dominik-schwabe/zsh-fnm"
zinit snippet OMZP::yarn

zinit wait lucid atload"zicompinit; zicdreplay" atclone'./zplug.zsh' blockf for \
  "g-plane/zsh-yarn-autocompletions"

# Direnv
zinit from"gh-r" as"program" mv"direnv* -> direnv" \
  atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' \
  pick"direnv" src="zhook.zsh" for \
  "direnv/direnv"

# Vagrant
zinit snippet OMZP::vagrant

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


## Ruby

# Install rbenv
zinit ice wait lucid as'program' pick'bin/rbenv' from'gh' \
  atclone'src/configure && make -C src; libexec/rbenv init - > .zinitrc.zsh' \
  atpull'%atclone' src'.zinitrc.zsh' nocompile'!'
zinit light rbenv/rbenv

# install ruby-build
zinit ice wait lucid as'program' pick'bin/ruby-build' from'gh'
zinit light rbenv/ruby-build

zinit wait lucid for \
  OMZP::ruby \
  OMZP::bundler \
  OMZP::rbenv \
  OMZP::gem

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
  zdharma/fast-syntax-highlighting \
  blockf \
  zsh-users/zsh-completions \
  atload"!_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions
