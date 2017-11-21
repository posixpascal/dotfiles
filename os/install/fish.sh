#!/bin/bash

source "./utils/formatting.sh"

mkdir ~/.config/
cp -R config/fish ~/.config/fish/
subtask "Installing fisherman"
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
cp -R config/fisherman/ ~/.config/fisherman
subtask "Installing fisherman plugins"
fisher