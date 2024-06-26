zinit wait="1" lucid for \
  OMZL::clipboard.zsh \
  OMZL::git.zsh \
  OMZP::systemd/systemd.plugin.zsh \
  OMZP::git/git.plugin.zsh

zinit light zdharma-continuum/zinit-annex-bin-gem-node
zinit light zdharma-continuum/zinit-annex-patch-dl

zinit ice \
  bindmap"^B -> ^H" \
  lucid \
  trackbinds \
  wait"3"
zinit light @zdharma-continuum/zbrowse

zinit load zdharma-continuum/zui

if [[ ! -x "$(command -v fd)" ]]; then
  zinit ice as"command" from"gh-r" mv"fd* -> fd" pick"fd/fd"
  zinit light sharkdp/fd
fi

zinit as="completion" for \
  OMZP::fd/_fd

# Ansible
zinit snippet OMZP::ansible

# Remembering all the aliases is hard sometimes...
zinit load djui/alias-tips
zinit snippet OMZP::aliases

# eza
## https://github.com/eza-community/eza
if [[ ! -x "$(command -v eza)" ]]; then
  zinit ice wait lucid as"program" from"gh-r" pick"eza-community/eza"
  zinit light eza-community/eza
fi

# jq
if [[ ! -x "$(command -v jq)" ]]; then
  zinit ice wait lucid as"program" from"gh-r" pick"jqlang/jq"
  zinit light jqlang/jq
fi

# Git
# github cli
## https://github.com/cli/cli
if [[ ! -x "$(command -v gh)" ]]; then
  zinit wait lucid light-mode for \
    from'gh-r' \
    as'program' \
    has'git' \
    mv'gh* -> src' \
    atclone'src/bin/gh completion -s zsh > src/bin/_gh' \
    atpull'%atclone' \
    pick'src/bin/gh' \
    id-as'gh' \
    'cli/cli'
fi

# direnv
zinit from"gh-r" as"program" mv"direnv* -> direnv" \
  atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' \
  pick"direnv" src="zhook.zsh" for \
  direnv/direnv

zinit lucid id-as'pkgx/loader' for \
  atclone'echo "source <(pkgx --shellcode)" > init.zsh' \
  atpull'%atclone' \
  nocompile'' \
  @zdharma-continuum/null

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
zinit snippet OMZP::terraform
# zinit ice wait'2' lucid as"program" from:"gh-r" has"terraform"
# zinit light terraform-linters/tflint

# Python
zinit snippet OMZP::python
zinit snippet OMZP::pip
if command -v pdm >/dev/null 2>&1; then
  pdm completion zsh >"$HOME/.local/share/zinit/completions/_pdm"
fi

# Poetry,tox
zinit wait lucid light-mode for \
  MichaelAquilina/zsh-autoswitch-virtualenv \
  as"completion" \
  sudosubin/zsh-poetry

# Ruff completions
if [[ $(command -v ruff) && ! -s "$HOME/.local/share/zinit/completions/_ruff" ]]; then
  ruff generate-shell-completion zsh >"$HOME/.local/share/zinit/completions/_ruff"
  zinit ice wait lucid as"completion" pick"ruff" src"$HOME/.local/share/zinit/completions/_ruff"
fi

zinit ice lucid wait'!0'
zinit light 'b4b4r07/enhancd'

# Theme
## Starship prompt
zinit ice as"command" from"gh-r" \
  atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
  atpull"%atclone" src"init.zsh"
zinit light starship/starship

# Misc
zinit light chrissicool/zsh-256color
zinit pack for ls_colors
zinit ice wait lucid
zinit light hlissner/zsh-autopair
zinit light mafredri/zsh-async
zinit snippet OMZP::rsync

zinit ice as"command" from"gh-r" pick"tokei/tokei" ver"v12.1.2"
zinit light XAMPPRocky/tokei

zinit ice as"command" from"gh-r" mv"hyperfine* -> hyperfine" pick"hyperfine/hyperfine"
zinit light sharkdp/hyperfine

zinit pack"bgn-binary+keys" for fzf

if [[ ! -x "$(command -v bat)" ]]; then
  zinit ice as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
  zinit light sharkdp/bat
fi

if [[ ! -x "$(command -v delta)" ]]; then
  zinit ice as"command" from"gh-r" mv"delta* -> delta" pick"delta/delta"
  zinit light dandavison/delta
fi

zinit ice as"command" from"gh-r" mv"zoxide* -> zoxide" \
  pick"zoxide/zoxide" atload"source <(zoxide init zsh --no-aliases)"
zinit light ajeetdsouza/zoxide

# DUF - a modern df
if [[ ! -x "$(command -v duf)" ]]; then
  zinit ice wait lucid as"program" mv"duf* -> duf" pick"duf/duf" from"gh-r" bpick'*.tar.gz'
  zinit light muesli/duf
fi

# # dust - a modern du
if [[ ! -x "$(command -v dust)" ]]; then
  zinit ice wait lucid as"program" mv"dust*/dust -> dust" pick"dust" from"gh-r"
  zinit light bootandy/dust
fi

# xh - a nicer http client
zinit ice wait lucid as"program" mv"xh* -> xh" pick"xh/xh" from"gh-r"
zinit light ducaale/xh

# glow - CLI markdown reader
zinit ice wait lucid as"program" pick"glow*/glow" from"gh-r" bpick'*.tar.gz'
zinit light charmbracelet/glow

# asdf
zinit ice as'program' src'asdf.sh'
zinit light asdf-vm/asdf

zinit snippet 'OMZP::asdf'

# PHP :(
zinit wait lucid for \
  OMZP::wp-cli \
  OMZP::composer

# Keep this one last so we are sure we get our compinit etc. yay turbo.
zinit wait lucid for \
  atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
  zdharma-continuum/fast-syntax-highlighting \
  blockf \
  atload"!_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions \
  bilelmoussaoui/flatpak-zsh-completion

zinit light zsh-users/zsh-completions

# Docker
zinit snippet OMZP::docker-compose

# AWS
zinit snippet OMZP::aws

# Tmux
# Check that tmux is installed
if [ -x "$(command -v tmux)" ]; then
  zinit snippet OMZP::tmux
  # zinit wait"2" lucid as'null' has"tmux" light-mode nocompile for atload='export TPM_HOME=$PWD' tmux-plugins/tpm
fi

# A much nicer Ctrl-R history searcher
# zinit snippet OMZP::fzf

zinit snippet 'OMZP::extract'
