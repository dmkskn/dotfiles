#!/usr/bin/env bash


echo "ENTER YOUR PASSWORD: "
sudo -v

echo "Installing Xcode Command Line Tools..."
xcode-select --install

./install-homebrew.sh
./install-brew-packages.sh
./install-appstore.sh
./install-updates.sh

echo "DONE."
exit
