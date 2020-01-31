#!/bin/bash

brew install rbenv ruby-build

cat << 'EOF' >> ~/.bash_profile
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
EOF

source ~/.bash_profile
rbenv install 2.5.1

rbenv rehash
rbenv global 2.5.1

rbenv exec gem install bundler
rbenv rehash

