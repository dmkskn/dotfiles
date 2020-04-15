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
        /usr/local/bin/pip3 install -Uq $1 &> /dev/null && /usr/local/bin/pip3 list | grep $1 &> /dev/null && echo "[pip] $1 was installed 👍" || echo "[pip] $1 was not installed ❌"
    else
        echo "[pip] $1 already installed 👌"
    fi
}

function pipx-install {
    if ! /usr/local/bin/pipx list | grep "package $1" &> /dev/null; then
        /usr/local/bin/pipx install $1 --python=$2 &> /dev/null && /usr/local/bin/pipx list | grep "package $1" &> /dev/null && echo "[pipx] $1 was installed 👍" || echo "[pipx] $1 was not installed ❌"
    else
        echo "[pipx] $1 already installed 👌"
    fi
}


function mas-install {
    if ! mas list | grep -q $1; then
        mas install $1 &> /dev/null && mas list | grep -q "$1" && echo "[mas] $2 was installed 👍" || echo "[mas] $2 was not installed ❌"
    else
        echo "[mas] $2 already installed 👌"
    fi
}

function npm-install {
    if ! /usr/local/bin/npm list -g | grep $1 &> /dev/null; then
        /usr/local/bin/npm install -g $1 &> /dev/null && /usr/local/bin/npm list -g | grep $1 &> /dev/null && echo "[npm] $1 was installed 👍" || echo "[npm] $1 was not installed ❌"
    else
        echo "[npm] $1 already installed 👌"
    fi
}

xcode-select --install &> /dev/null && echo "[xcode-select] Xcode Command Line Tools were installed 👍" || echo "[xcode-select] Xcode Command Line Tools were not installed (probably already installed) 👌"


if [ -z $(which brew) ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &> /dev/null
    [ -f $(which brew) ] echo "[brew] Homebrew was installed 👍" || "[brew] Homebrew was not installed ❌"
fi


[ ! brew info cask &> /dev/null ] && brew tap caskroom/cask &> /dev/null && echo "[brew-cask] brew-cask was installed 👍" || echo "[brew-cask] brew-cask was not installed ❌"



# Install the main things
# -----------------------
brew-install pyenv
brew-install node

brew-cask-install iterm2
brew-cask-install visual-studio-code

brew-install git
brew-install git-lfs

brew-install vim
brew-install youtube-dl

brew-install travis
brew-install mas


# Install Python enviroment
# -------------------------
eval "$(pyenv init -)"
PYENV_LATEST_VERSION=$(pyenv install --list | grep -v - | grep -v b | tail -1 | sed -e 's/^[[:space:]]*//')
pyenv versions | grep $PYENV_LATEST_VERSION > /dev/null &> /dev/null || pyenv install $PYENV_LATEST_VERSION && echo "[pyenv] Python $PYENV_LATEST_VERSION was installed"
pyenv global $PYENV_LATEST_VERSION && echo "[pyenv] Python $PYENV_LATEST_VERSION is now global."

pip-install pip
pip-install pipx

pip-install pipenv
[ -z $(which poetry) ] && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python > /dev/null &> /dev/null && echo "[poetry] Poetry was installed 👍"

pipx-install ptpython $(pyenv which python)
pipx inject ptpython requests requests-html > /dev/null &> /dev/null && echo "[pipx] requests and requests-html was injected into ptpython enviroment 👍" || echo "[pipx] requests and requests-html was not injected into ptpython enviroment ❌"

pipx-install black $(pyenv which python)
pipx-install cookiecutter $(pyenv which python)


# Install Node things
# -------------------
npm-install gulp
npm-install netlify-cli
npm-install now


# Install apps from AppStore
# --------------------------
mas-install 747648890 "Telegram"
mas-install 441258766 "Magnet"
mas-install 621727840 "DjVu To PDF Converter"
mas-install 425424353 "The Unarchiver"
mas-install 1335413823 "Ka-Block!"
mas-install 1188020834 "OverPicture"
mas-install 497799835 "XCode"


# Install apps from Homebrew Cask
# -------------------------------
brew-cask-install maccy
brew-cask-install iina
brew-cask-install anki
brew-cask-install selfcontrol
brew-cask-install punto-switcher
brew-cask-install appcleaner
brew-cask-install keepingyouawake
brew-cask-install writefull
brew-cask-install webtorrent
brew-cask-install transmission
brew-cask-install figma
brew-cask-install calibre
brew-cask-install postgres
brew-cask-install imageoptim
brew-cask-install imagealpha
brew-cask-install webponize
brew-cask-install google-chrome
brew-cask-install firefox

exit 0