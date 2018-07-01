# General

## Locale
set -x LC_ALL ja_JP.UTF-8
set -x LANG ja_JP.UTF-8

set -x FISH_HOME $HOME/.config/fish

## aliases
source $FISH_HOME/alias.fish

# Environment Variables

## Homebrew
set -x PATH /usr/local/bin $PATH

## golang
set -x GOPATH $HOME
set -x PATH $GOPATH/bin $PATH

## nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

## Remove redundant paths
set -x PATH (echo $PATH | tr ' ' '\n' | sort -u)

# Plugins

## Fisherman
if not test -f $FISH_HOME/functions/fisher.fish
  echo "＜(゜∀。) Installing Fisherman ..."
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
  fisher
end

## fzf
set -x FZF_DEFAULT_OPTS '--height 80% --border --ansi --multi'
set -x FZF_ALT_C_OPTS '--select-1 --exit-0'
