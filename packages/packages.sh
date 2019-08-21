#!/usr/bin/env bash

sudo -v


function brew-install {
    if [ -z $(which $1) ]; then
        brew install $1 &> /dev/null && [ -f $(which $1) ] && echo "[brew] $1 was installed 👍" || echo "[brew] $1 was not installed ❌"
    else
        echo "[brew] $1 already installed 👌"
    fi
}


function brew-cask-install {
    if ! brew cask list | grep -q $1; then
        brew cask install $1 &> /dev/null && brew cask list | grep -q $1 && echo "[brew-cask] $1 was installed 👍" || echo "[brew-cask] $1 was not installed ❌"
    else
        echo "[brew-cask] $1 already installed 👌"
    fi
}


function pip-install {
    if ! /usr/local/bin/pip3 list | grep $1 &> /dev/null; then
        /usr/local/bin/pip3 install -q $1 &> /dev/null && /usr/local/bin/pip3 list | grep $1 &> /dev/null && echo "[pip] $1 was installed 👍" || echo "[pip] $1 was not installed ❌"
        else
        echo "[pip] $1 already installed 👌"
    fi
}


function mas-install {
    if ! mas list | grep -q $1; then
        mas install $1 &> /dev/null && mas list | grep -q "$1" && echo "[mas] $2 was installed 👍" || echo "[mas] $2 was not installed ❌"
        else
        echo "[mas] $2 already installed "
    fi
}


echo -n "Installing Xcode Command Line Tools... " && xcode-select --install &> /dev/null && echo "Done." || echo "Error (probably already installed)"


if [ -z $(which brew) ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &> /dev/null
    [ -f $(which brew) ] echo "Homebrew was installed 👍" || "Homebrew was not installed ❌"
fi


[ ! brew info cask &> /dev/null ] && brew tap caskroom/cask &> /dev/null && echo "brew-cask was installed 👍"



# Essentials
brew-install python
brew-install mas
brew-cask-install iterm2
brew-cask-install visual-studio-code

# PyPi
pip-install ptpython
pip-install requests
pip-install requests-html
pip-install polka
pip-install polka-curses
pip-install isle
pip-install black
pip-install pylint
pip-install film
pip-install movie-review


# Packages
brew-install git
brew-install vim
brew-install wget
brew-install youtube-dl
brew-install tag
brew-install tmux
brew-install googler
brew-install tree

# AppStore
mas-install 747648890 "Telegram"
mas-install 441258766 "Magnet"
mas-install 621727840 "DjVu To PDF Converter"
mas-install 425424353 "The Unarchiver"
mas-install 1335413823 "Ka-Block!"
mas-install 1188020834 "OverPicture"
mas-install 497799835 "XCode"

# # Applications
brew-cask-install iina
brew-cask-install anki
brew-cask-install selfcontrol
brew-cask-install punto-switcher
brew-cask-install appcleaner
brew-cask-install keyboard-cleaner
brew-cask-install keepingyouawake
brew-cask-install writefull
brew-cask-install webtorrent
brew-cask-install figma
brew-cask-install calibre
brew-cask-install postgres
brew-cask-install cocoapods

exit 0