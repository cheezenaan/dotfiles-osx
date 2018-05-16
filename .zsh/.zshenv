export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8

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
