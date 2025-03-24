#!/bin/bash

echo Installing Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo Alias zprofile
ln -s ~/.machine-setup/dotfiles/zprofile ~/.zprofile

echo Alias zshrc
ln -s ~/.machine-setup/dotfiles/zshrc ~/.zshrc