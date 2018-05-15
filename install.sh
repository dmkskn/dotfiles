#!/usr/bin/env bash


echo "ENTER YOUR PASSWORD: "
sudo -v


echo "Installing Macos updates..."
softwareupdate -i -a


echo "Installing Xcode Command Line Tools..."
xcode-select --install > /dev/null


echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /dev/null
brew update > /dev/null
brew upgrade > /dev/null
brew tap caskroom/cask > /dev/null


# Packages 
echo -n "Installing wget..." && brew install wget > /dev/null && echo " Done."
echo -n "Installing youtube-dl..." && brew install youtube-dl > /dev/null && echo " Done."
echo -n "Installing git..." && brew install git > /dev/null && echo " Done."
echo -n "Installing bash-completion..." && brew install bash-completion > /dev/null && echo " Done."
echo -n "Installing python3..." && brew install python3 > /dev/null && echo " Done."
echo -n "Installing pipenv..." && brew install pipenv > /dev/null && echo " Done."
echo -n "Installing mas..." && brew install mas > /dev/null && echo " Done."


# Cask
echo -n "Installing Keyboard Cleaner..." && brew cask install keyboard-cleaner > /dev/null && echo " Done."
echo -n "Installing VLC..." && brew cask install vlc > /dev/null && echo " Done."
echo -n "Installing IINA..." && brew cask install iina > /dev/null && echo " Done."
echo -n "Installing KeepingYouAwake..." && brew cask install keepingyouawake > /dev/null && echo " Done."
echo -n "Installing Writefull..." && brew cask install writefull > /dev/null && echo " Done."
echo -n "Installing Firefox..." && brew cask install firefox > /dev/null && echo " Done."
echo -n "Installing WebTorrent..." && brew cask install webtorrent > /dev/null && echo " Done."
echo -n "Installing Anki..." && brew cask install anki > /dev/null && echo " Done."
echo -n "Installing pgadmin4..." && brew cask install pgadmin4 > /dev/null && echo " Done."
echo -n "Installing Calibre..." && brew cask install calibre > /dev/null && echo " Done."
echo -n "Installing SelfControl..." && brew cask install selfcontrol > /dev/null && echo " Done."
echo -n "Installing AppCleaner..." && brew cask install appcleaner > /dev/null && echo " Done."
echo -n "Installing CheatSheet..." && brew cask install cheatsheet > /dev/null && echo " Done."
echo -n "Installing Tor..." && brew cask install torbrowser > /dev/null && echo " Done."
echo -n "Installing Punto Switcher..." && brew cask install punto-switcher > /dev/null && echo " Done."
echo -n "Installing The Unarchiver..." && brew cask install the-unarchiver > /dev/null && echo " Done."


# # Quick Look Plugins
echo -n "Installing Quick Look Plugins..."
brew cask install qlstephen > /dev/null # https://github.com/whomwah/qlstephen
brew cask install qlvideo > /dev/null # https://github.com/Marginal/QLVideo
echo "Done."


# App Store
echo -n "Installing Magnet..." && mas install 441258766 > /dev/null && echo "Done."
echo -n "Installing Xcode..." && mas install 497799835 > /dev/null && echo "Done."
echo -n "Installing Telegram Desktop..." && mas install 946399090 > /dev/null && echo "Done."
echo -n "Installing DjVu To PDF Converter..." && mas install 621727840 > /dev/null && echo "Done."


echo "THE END."
exit