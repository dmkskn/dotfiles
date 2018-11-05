#!/usr/bin/env bash


if [[ ! -f $(which brew) ]]; then
  ./install-homebrew.sh
fi


if [[ $($(which brew) list | grep 'mas') != 'mas' ]]; then
  echo -n "Installing mas..."                 && brew install mas > /dev/null && echo " Done."
fi


echo "Installing Telegram...";                mas install 747648890 > /dev/null &
echo "Installing Magnet...";                  mas install 441258766 > /dev/null &
echo "Installing DjVu To PDF Converter...";   mas install 621727840 > /dev/null &
echo "Installing Xcode...";                   mas install 497799835 > /dev/null &
