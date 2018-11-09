#!/usr/bin/env bash


if [[ ! -f $(which brew) ]]; then
  ./install-homebrew.sh
fi


# Packages 
echo -n "Installing vim..."               && brew install vim > /dev/null && echo " Done."
echo -n "Installing wget..."               && brew install wget > /dev/null && echo " Done."
echo -n "Installing shellcheck..."         && brew install shellcheck > /dev/null && echo " Done."
echo -n "Installing youtube-dl..."         && brew install youtube-dl > /dev/null && echo " Done."
echo -n "Installing git..."                && brew install git > /dev/null && echo " Done."
echo -n "Installing bash-completion..."    && brew install bash-completion > /dev/null && echo " Done."
echo -n "Installing python3..."            && brew install python3 > /dev/null && echo " Done."
echo -n "Installing pipenv..."             && brew install pipenv > /dev/null && echo " Done."
echo -n "Installing mas..."                && brew install mas > /dev/null && echo " Done."
echo -n "Installing tag..."                && brew install tag > /dev/null && echo " Done."
echo -n "Installing mkvtoolnix..."         && brew install mkvtoolnix --with-qt > /dev/null && echo " Done."


# Cask
echo -n "Installing Visual Studio Code..." && brew cask install visual-studio-code > /dev/null && echo " Done."
echo -n "Installing Postgres..."           && brew cask install postgres > /dev/null && echo " Done."
echo -n "Installing HandBrake..."          && brew cask install handbrake > /dev/null && echo " Done."
echo -n "Installing Docker..."             && brew cask install docker > /dev/null && echo " Done."
echo -n "Installing Kitematic..."          && brew cask install kitematic > /dev/null && echo " Done."
echo -n "Installing Keyboard Cleaner..."   && brew cask install keyboard-cleaner > /dev/null && echo " Done."
echo -n "Installing VLC..."                && brew cask install vlc > /dev/null && echo " Done."
echo -n "Installing IINA..."               && brew cask install iina > /dev/null && echo " Done."
echo -n "Installing KeepingYouAwake..."    && brew cask install keepingyouawake > /dev/null && echo " Done."
echo -n "Installing Writefull..."          && brew cask install writefull > /dev/null && echo " Done."
echo -n "Installing WebTorrent..."         && brew cask install webtorrent > /dev/null && echo " Done."
echo -n "Installing Anki..."               && brew cask install anki > /dev/null && echo " Done."
echo -n "Installing Calibre..."            && brew cask install calibre > /dev/null && echo " Done."
echo -n "Installing SelfControl..."        && brew cask install selfcontrol > /dev/null && echo " Done."
echo -n "Installing AppCleaner..."         && brew cask install appcleaner > /dev/null && echo " Done."
echo -n "Installing Tor..."                && brew cask install tor-browser > /dev/null && echo " Done."
echo -n "Installing Punto Switcher..."     && brew cask install punto-switcher > /dev/null && echo " Done."
echo -n "Installing The Unarchiver..."     && brew cask install the-unarchiver > /dev/null && echo " Done."
