# Dotfiles

This repository contains my personal dotfiles managed with [YADM](https://yadm.io/) (Yet Another Dotfiles Manager).

## What's Included

- **Fish Shell Configuration** (`~/.config/fish/config.fish`)
  - NVM integration with bass
  - Starship prompt
  - Zoxide integration
  - FZF integration
  - Bun configuration
  - Android SDK configuration
- **Git Configuration** (`~/.gitconfig`)
- **And more dotfiles as they are added**

## Prerequisites

- macOS (tested on macOS)
- [Homebrew](https://brew.sh/) package manager
- Git

## Installation

### 1. Install YADM

```bash
# Install YADM via Homebrew
brew install yadm
```

### 2. Clone this dotfiles repository

```bash
# Clone the dotfiles repository
yadm clone https://github.com/gblsmlo/.dotfiles.git
```

### 3. Install dependencies

The fish configuration requires some additional tools:

```bash
# Install required tools
brew install starship zoxide fzf nvm

# Install Fisher (Fish package manager)
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install bass (required for NVM with Fish)
fisher install edc/bass
```

## Usage

### Basic YADM Commands

```bash
# Check status of your dotfiles
yadm status

# Add a new dotfile to tracking
yadm add ~/.config/new-config-file

# Commit changes
yadm commit -m "Add new configuration"

# Push changes to remote repository
yadm push

# Pull latest changes from remote
yadm pull

# List all files managed by YADM
yadm list

# Show differences
yadm diff
```

### Adding New Dotfiles

To add a new dotfile to your repository:

```bash
# Add the file
yadm add ~/.config/new-app/config.yaml

# Commit the change
yadm commit -m "Add new-app configuration"

# Push to remote
yadm push
```

### Updating Existing Dotfiles

When you modify any tracked dotfile:

```bash
# Check what changed
yadm status

# Add changes
yadm add ~/.config/fish/config.fish

# Commit changes
yadm commit -m "Update fish configuration"

# Push to remote
yadm push
```

### Setting Up on a New Machine

1. Install YADM: `brew install yadm`
2. Clone this repository: `yadm clone https://github.com/gblsmlo/.dotfiles.git`
3. Install dependencies as listed above
4. Restart your terminal or run `source ~/.config/fish/config.fish`

## Features

### Fish Shell Setup

The fish configuration includes:

- **NVM Integration**: Node.js version management with bass
- **Starship Prompt**: Modern, fast, and customizable prompt
- **Zoxide**: Smarter cd command with frecency
- **FZF**: Command-line fuzzy finder
- **Bun**: JavaScript runtime and package manager
- **Android SDK**: Development environment for Android

### Git Configuration

Includes personal git settings and aliases for efficient workflow.

## Customization

Feel free to fork this repository and customize it for your own needs. The configurations are modular and can be easily modified.

## Troubleshooting

### Fish Shell Issues

If you encounter issues with fish shell:

```bash
# Reload fish configuration
source ~/.config/fish/config.fish

# Check if all dependencies are installed
which starship zoxide fzf nvm
```

### YADM Issues

```bash
# Check YADM configuration
yadm config --list

# Verify remote repository
yadm remote -v
```

## Contributing

If you have suggestions or improvements, feel free to open an issue or pull request.

## License

This repository is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [YADM](https://yadm.io/) for dotfiles management
- [Fish Shell](https://fishshell.com/) for the amazing shell experience
- [Starship](https://starship.rs/) for the beautiful prompt
- All the other amazing tools integrated in this setup
