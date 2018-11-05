#!/usr/bin/env bash


echo "Installing MacOS updates..."
softwareupdate -i -a > /dev/null &

echo "Installing Homebrew updates..."
brew update > /dev/null
brew upgrade > /dev/null
brew tap caskroom/cask > /dev/null

echo "DONE."