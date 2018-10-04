#!/bin/bash

## brew install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install pyenv
brew install pyenv-virtualenv

cat bash_profile_add >> ~/.bash_profile

source ~/.bash_profile

pyenv install 3.6.5
pyenv global 3.6.5

## pip update

pip install --upgrade pip

## pip install
pip install ccxt==1.12.174
pip install simplejson
pip install pybitflyer
pip install requests
pip install datetime
pip install pandas
pip install pytz
pip install websocket-client==0.47
pip install matplotlib
pip install discord
pip install pillow
pip install bitmex

## ta-lib install
brew install ta-lib
pip install ta-lib
