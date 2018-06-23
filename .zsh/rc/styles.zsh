# Auto Complete
## Coloring
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

## Using cache
zstyle ':completion:*' use-cache true
zstyle ':completion::complete:*' cache-path "${ZDOTDIR:-$HOME}/.zcompcache"

## Select Ctrl-f / Ctrl-b
zstyle ':completion:*:default' menu select=2

# fzf
zstyle ":anyframe:selector:" use fzf

# autoloads
autoload -Uz cdr
