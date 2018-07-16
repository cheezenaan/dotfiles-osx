# Homebrew
set -U fish_user_paths /usr/local/bin $fish_user_paths

# golang
set -x GOPATH $HOME
set -U fish_user_paths $GOPATH/bin $fish_user_paths

# nodebrew
set -U fish_user_paths $HOME/.nodebrew/current/bin $fish_user_paths

# Remove redundant paths
set -x PATH (echo $PATH | tr ' ' '\n' | sort -u)
set -x fish_user_paths (echo $fish_user_paths | tr ' ' '\n' | sort -u)
