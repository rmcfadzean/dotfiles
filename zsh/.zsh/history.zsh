if [ -z "$HISTFILE" ]; then
  export HISTFILE=$HOME/.zhistory
fi

export HISTSIZE=10000
export SAVEHIST=10000
export HISTORY_IGNORE="(pwd|l[sal]|rm|mv|shutdown|exit|rmdir|ag|tree|code|cloc|wc)"

# Show history
case $HIST_STAMPS in
"mm/dd/yyyy") alias history='fc -fl 1' ;;
"dd.mm.yyyy") alias history='fc -El 1' ;;
"yyyy-mm-dd") alias history='fc -il 1' ;;
*) alias history='fc -l 1' ;;
esac

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
