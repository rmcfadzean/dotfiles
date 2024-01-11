export GPG_TTY=$TTY

ZINIT_HOME="${ZINIT_HOME:-${XDG_DATA_HOME:-${HOME}/.local/share}/zinit}"
ZINIT_REPO_DIR_NAME="${ZINIT_REPO_DIR_NAME:-zinit.git}"
ZINIT_INSTALL_DIR=${ZINIT_INSTALL_DIR:-${ZINIT_HOME}/${ZINIT_REPO_DIR_NAME}}
ZINIT_REPO="${ZINIT_REPO:-"zdharma-continuum/zinit"}"

if [[ ! -f ${ZINIT_HOME}/${ZINIT_REPO_DIR_NAME}/zinit.zsh ]]; then
  print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}${ZINIT_REPO}%F{220})…%f"
  command mkdir -p "${ZINIT_HOME}" && command chmod g-rwX "${ZINIT_HOME}"
  command git clone https://github.com/${ZINIT_REPO} "${ZINIT_HOME}/${ZINIT_REPO_DIR_NAME}" && \
      print -P "%F{33} %F{34}Installation successful.%f%b" || \
      print -P "%F{160} The clone has failed.%f%b"
fi

source "${ZINIT_HOME}/${ZINIT_REPO_DIR_NAME}/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# for config (~/.zsh/*.zsh) source $config
[[ -f ~/.zsh/init.zsh ]] && source ~/.zsh/init.zsh

# Load additional distro-specific config files
[[ -f ~/.zsh/$DISTRIB_ID/init.zsh ]] && source ~/.zsh/$DISTRIB_ID/init.zsh

# For all your local configs.
### DO NOT CHECK THIS FILE IN TO GIT!
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
