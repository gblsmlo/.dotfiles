if status is-interactive
  # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""

# ALIASES
alias ll="ls -la"

# Git
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias gc="git commit"
alias gcm="git commit -m"
alias gb="git branch"
alias gct="git checkout"
alias gcb="git checkout -b"
alias gbd="git branch -D"
alias ga="git add"
alias gaa="git add ."
alias gap="git add -p"
alias gr="git reset"
alias grh="git reset --hard"

# Github
alias gclone="gh repo clone"

# pnpm
alias pn="pnpm"
alias pni="pnpm install"
alias pnid="pnpm install -D"

# HTTPie
alias h="http"

# Others
alias cla="claude"
alias clay="claude --allow-dangerously-skip-permissions"
alias gem="gemini"
alias opc="opencode"

# SPACEFISH
set SPACEFISH_PROMPT_ADD_NEWLINE false

starship init fish | source
zoxide init --cmd cd fish | source

# BUN
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# ANDROID
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools

# ORBSTACK
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
