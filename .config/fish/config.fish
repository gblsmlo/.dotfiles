if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""

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
