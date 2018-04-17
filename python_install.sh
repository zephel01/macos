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
pip install ccxt
pip install simplejson
pip install pybitflyer
pip install requests
pip install datetime

## ta-lib install
brew install ta-lib
pip install ta-lib
