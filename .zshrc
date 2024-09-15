alias vim='nvim'
alias ls='eza'
alias cat='bat'
eval "$(fnm env --use-on-cd)"


# pnpm
export PNPM_HOME="/Users/aidan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
export PATH="/Users/aidan/Library/Application Support/fnm:$PATH"
eval "`fnm env`"
