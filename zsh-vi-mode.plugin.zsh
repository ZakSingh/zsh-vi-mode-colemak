# According to the standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# ctrl-j newline
bindkey '^n' accept-line
bindkey -a '^n' accept-line

# another rotation to match qwerty
bindkey -a 'm' vi-backward-char
bindkey -a 'n' down-line-or-history
bindkey -a 'e' up-line-or-history
bindkey -a 'i' vi-forward-char

# make qwerty
bindkey -a 'k' vi-repeat-search
bindkey -a 'K' vi-rev-repeat-search
bindkey -a 'u' vi-insert
bindkey -a 'U' vi-insert-bol
bindkey -a 'l' vi-undo-change
bindkey -a 'N' vi-join

# spare
bindkey -a 'j' vi-forward-word-end
bindkey -a 'J' vi-forward-blank-word-end

# Handle $0 according to the standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

source ${0:h}/zsh-vi-mode.zsh
