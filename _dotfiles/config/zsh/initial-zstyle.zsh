# from manjaro defaults
  # zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'   # Case insensitive tab completion
  zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
  zstyle ':completion:*' rehash true                              # automatically find new executables in path 
  # Speed up completions
  zstyle ':completion:*' accept-exact '*(N)'
  zstyle ':completion:*' use-cache on
  zstyle ':completion:*' cache-path ~/.zsh/cache
    