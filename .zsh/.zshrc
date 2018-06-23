for rcfile in $ZDOTDIR/rc/*; do [ -r $rcfile ] && source $rcfile; done

# fzf
export FZF_DEFAULT_OPTS="--height 70%"
export FZF_ALT_C_OPTS="--select-1 --exit-0"

# anyframe
if [ "$(which peco)" ]; then
	autoload -Uz anyframe-init && anyframe-init

	bindkey '^]' anyframe-widget-cdr
	bindkey '^r' anyframe-widget-put-history
	bindkey '^g' anyframe-widget-cd-ghq-repository
	bindkey '^x^k' anyframe-widget-kill
fi

if (which zprof >/dev/null); then
	zprof | less -qR
fi
