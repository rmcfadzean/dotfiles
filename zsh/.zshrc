source ~/.zplugin/bin/zplugin.zsh

# for config (~/.zsh/*.zsh) source $config
[[ -f ~/.zsh/init.zsh ]] && source ~/.zsh/init.zsh

# Load additional distro-specific config files
[[ -f ~/.zsh/$DISTRIB_ID/init.zsh ]] && source ~/.zsh/$DISTRIB_ID/init.zsh

# For all your local configs.
### DO NOT CHECK THIS FILE IN TO GIT!
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local