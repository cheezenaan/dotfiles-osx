for file in $ZDOTDIR/.z{aliases,functions,plugins,prompts}; do
	[ -r "$file" ] && source "$file"
done

setopt no_beep
autoload -Uz cdr

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
