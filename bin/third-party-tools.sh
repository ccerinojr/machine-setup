#!/bin/bash

echo Installing TextMate Shell Support
sudo ln -s /Applications/TextMate.app/Contents/Resources/mate /usr/local/bin/mate

echo Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo Installing rbenv
brew install rbenv

echo Init rbenb
rbenv init 

echo Alias zshrc
ln -s ~/.machine-setup/dotfiles/zshrc ~/.zshrc