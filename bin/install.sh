#!/bin/bash

echo Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo Installing rbenv
brew install rbenv

echo Init rbenb
rbenv init 

echo Alias gitignore
ln -s ~/.machine-setup/dotfiles/gitignore ~/.gitignore

echo Alias gitconfig
ln -s ~/.machine-setup/dotfiles/gitconfig ~/.gitconfig

echo Alias git-completion
ln -s ~/.machine-setup/dotfiles/git-completion.bash ~/.git-completion.bash

echo Fetching Submodules
git submodule update --init

echo Alias git-completion
ln -s ~/.machine-setup/bash-git-prompt ~/.bash-git-prompt

echo Installing TextMate Shell Support
ln -s /Applications/TextMate.app/Contents/Resources/mate ~/bin/mate






