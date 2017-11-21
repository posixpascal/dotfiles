#!/bin/bash

source ./utils/formatting.sh

if [ ! -x $(command -v brew) ]; then
    subtask "Downloading"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    subtask "Tapping cask"
    brew tap caskroom/cask
    brew install brew-cask
    brew tap caskroom/versions
    subtsak ""
    sleep 1
fi