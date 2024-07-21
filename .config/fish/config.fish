if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

starship init fish | source
zoxide init --cmd cd fish | source

