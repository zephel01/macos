#!/bin/bash
### Mac Build 

echo "$SHELL"

## brew install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

cat ~/m1mac/.zshrc >> ~/.zshrc

exec $SHELL -l

brew install git

git clone https://github.com/anyenv/anyenv ~/.anyenv

## export anyenv
at << 'EOF' >> ~/.zshrc
# export anyenv
if [ -e "$HOME/.anyenv" ]
then
    export ANYENV_ROOT="$HOME/.anyenv"
    export PATH="$ANYENV_ROOT/bin:$PATH"
    if command -v anyenv 1>/dev/null 2>&1
    then
        eval "$(anyenv init - zsh)"
    fi
fi
EOF

exec $SHELL -l
anyenv install --init

## install anyenv plugins
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

anyenv update

## install pyenv
anyenv install pyenv

## export pyenv
cat << 'EOF' >> ~/.zprofile
# export pyenv
export PYENV_ROOT="$HOME/.anyenv/envs/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
EOF

cat << 'EOF' >> ~/.zshrc
# export pyenv
eval "$(pyenv init -)"
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
