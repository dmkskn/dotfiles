#!/usr/bin/env bash


echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /dev/null
brew tap caskroom/cask > /dev/null