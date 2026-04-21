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

# HTTPie
alias h="http"

# Others
alias cla="claude"
alias clay="claude --allow-dangerously-skip-permissions"
alias gem="gemini"
alias opc="opencode"

# SPACEFISH
set SPACEFISH_PROMPT_ADD_NEWLINE false

# Add Homebrew's bin directory to path so you can use Homebrew's binaries like `brew`
fish_add_path "/opt/homebrew/bin/"

starship init fish | source
zoxide init --cmd cd fish | source
fzf --fish | source

# BUN
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# ANDROID
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools

# NVM
set -x NVM_DIR ~/.nvm
function nvm
    bass source /opt/homebrew/opt/nvm/nvm.sh --no-use ';' nvm $argv
end

# Auto-load nvm default version
function __nvm_auto_load
    if test -s "$NVM_DIR/nvm.sh"
        bass source /opt/homebrew/opt/nvm/nvm.sh --no-use ';' nvm use default
    end
end

# Load nvm default version on shell start
if status is-interactive
    __nvm_auto_load
end


# pnpm
set -gx PNPM_HOME "/Users/gabs/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Added by Antigravity
fish_add_path /Users/gabs/.antigravity/antigravity/bin

# Added by Antigravity
fish_add_path /Users/gabs/.antigravity/antigravity/bin

# Added by Antigravity
fish_add_path /Users/gabs/.antigravity/antigravity/bin

# Added by Antigravity
fish_add_path /Users/gabs/.antigravity/antigravity/bin

# Added by Antigravity
fish_add_path /Users/gabs/.antigravity/antigravity/bin
