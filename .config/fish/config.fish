# Locale
set -x LC_ALL ja_JP.UTF-8
set -x LANG ja_JP.UTF-8

# Homebrew
set -x PATH /usr/local/bin $PATH

# golang
set -x GOPATH $HOME
set -x PATH $GOPATH/bin $PATH

# nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

# Remove redundant paths
set -x PATH (echo $PATH | tr ' ' '\n' | sort -u)

# fzf
set -x FZF_DEFAULT_OPTS '--height 80% --border --ansi --multi'
set -x FZF_ALT_C_OPTS '--select-1 --exit-0'
