# General

## Locale
set -x LC_ALL ja_JP.UTF-8
set -x LANG ja_JP.UTF-8

set -x FISH_HOME $HOME/.config/fish

## Aliases
source $FISH_HOME/alias.fish

# Environment Variables
source $FISH_HOME/env.fish

# Plugins

## Fisherman
if not test -f $FISH_HOME/functions/fisher.fish
  echo "＜(゜∀。) Installing Fisherman ..."
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
  fisher ; and fisher up
end

## fzf
set -x FZF_DEFAULT_OPTS '--height 80% --border --ansi --multi'
set -x FZF_ALT_C_OPTS '--select-1 --exit-0'
