#!/bin/bash

## brew install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install pyenv
brew install pyenv-virtualenv

cat << 'EOF' >> ~/.bash_profile
PYENV_ROOT=~/.pyenv
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOF

source ~/.bash_profile

pyenv install 3.6.5
pyenv global 3.6.5

## pip update

pip install --upgrade pip

## pip install
pip install ccxt
pip install simplejson
pip install pybitflyer
pip install requests
pip install datetime
pip install pandas
pip install pytz
pip install websocket-client
pip install matplotlib
pip install discord
pip install pillow
pip install bitmex

## ta-lib install
brew install ta-lib
pip install ta-lib

## chromedriver
brew install chromedriver
pip install selenium
