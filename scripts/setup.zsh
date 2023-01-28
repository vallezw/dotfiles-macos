#!/bin/zsh

# Check if brew exists
if ! command -v brew &> /dev/null
then
    echo "Brew could not be found and will now be installed"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval "$(/opt/homebrew/bin/brew shellenv)"
else 
	echo "Brew already installed. Continue installation..."
fi

# Oh my zsh

if [ ! -d "$HOME/.oh-my-zsh/oh-my-zsh.sh" ]
then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "Oh-my-zsh already installed. Continue installation..."
fi

# Install brew file
brew install rcmdnk/file/brew-file

# Set brew file vars
export HOMEBREW_BREWFILE=~/.config/brew/Brewfile
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi


# Create folders
mkdir -p $HOME/projects && mkdir -p $HOME/quantco

# Brew install file
brew file install