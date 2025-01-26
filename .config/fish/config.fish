if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

starship init fish | source
zoxide init --cmd cd fish | source
fzf --fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

