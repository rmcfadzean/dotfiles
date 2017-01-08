source ~/.zplug/init.zsh

for config (~/.zsh/*.zsh) source $config

zplug "zplug/zplug"

compinit

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load