export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8

# ls colors
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Homebrew
export PATH=/usr/local/bin:$PATH

# golang
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init - --no-rehash)"

if [ -n "$DEBUG" ]; then
	zmodload zsh/zprof && zprof
	unset DEBUG
fi
