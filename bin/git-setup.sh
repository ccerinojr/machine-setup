#!/bin/bash

is_for_work=false

print_usage() {
  printf "Usage: ..."
}

while getopts 'w' flag; do
  case "${flag}" in
    w) is_for_work=true ;;
  esac
done


echo Alias gitignore
ln -s ~/.machine-setup/dotfiles/gitignore ~/.gitignore_global

echo Alias gitconfig
if $is_for_work; then
	cp ~/.machine-setup/dotfiles/gitconfig ~/.gitconfig
else 
	ln -s ~/.machine-setup/dotfiles/gitconfig ~/.gitconfig
fi