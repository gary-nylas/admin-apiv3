#!/usr/bin/env bash
set -e

color() {
  printf '\033[%sm%s\033[m\n' "$@"
}

if ! type brew >/dev/null 2>&1; then
  color '36;1' 'Not finding brew, installing Homebrew...'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
  </dev/null
fi

color '36;1' 'Installing pyenv...'
brew install pyenv

# Initialize pyenv, so we can use it
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

color '36;1' 'Setting up python enviroment...'
pyenv install 3.8.5 --skip-existing
pyenv virtualenv 3.8.5 t1-automation --force
pyenv activate t1-automation

color '36;1' 'Installing the python packages...'
pip install --upgrade pip
pip install -r requirements.txt

color '32;1' '🎉  Done!'