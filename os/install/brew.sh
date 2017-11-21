#!/bin/bash

source ./utils/formatting.sh

if [ ! -x $(command -v brew) ]; then
    subtask "Downloading"
    source=$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)
    ruby -e "${source}"
    subtask "Tapping cask"
    brew tap caskroom/cask
    brew install brew-cask
    brew tap caskroom/versions
    subtask ""
    sleep 1
fi