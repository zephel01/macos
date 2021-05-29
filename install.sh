#!/bin/bash

# change bash
chsh -s /bin/bash

echo "$SHELL"

## brew install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

git clone https://github.com/anyenv/anyenv ~/.anyenv

## export anyenv
cat << 'EOF' >> ~/.bash_profile
# export anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - --no-rehash)"
EOF

~/.anyenv/bin/anyenv init
exec $SHELL -l
anyenv install --init

## install pyenv
anyenv install pyenv

## export pyenv
cat << 'EOF' >> ~/.bash_profile
export PYENV_ROOT="$HOME/.anyenv/envs/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
EOF

exec $SHELL -l

pyenv install 3.6.10
pyenv global 3.6.10

pyenv rehash

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
