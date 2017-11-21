#!/bin/bash
source ./utils/colors.sh
source ./utils/formatting.sh

osascript -e 'tell application "System Preferences" to quit'

section "Asking for root password..."

sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


section "Installing HomeBrew & Formulae..."
task "HomeBrew" "./os/install/brew.sh"

for i in ./os/install/brew/*
do
    package=$(basename $i)
    task "$package" "./utils/brew-install-package.sh $package"
done

section "Installing rvm & rubies"
task "rvm", "./os/install/rvm.sh"
task "ruby-latest", "./os/install/ruby.sh"

section "MacOS changes"
task "Dock", "./os/defaults/dock.sh"
task "Spotlight", "./os/defaults/spotlight.sh"
task "Safari", "./os/defaults/safari.sh"
task "Mail", "./os/defaults/mail.sh"
task "Finder", "./os/defaults/finder.sh"
task "System", "./os/defaults/system.sh"

section "Installing applications via cask"
for i in ./os/install/cask/*
do
    package=$(basename $i)
    task "$package" "./utils/cask-install-package.sh $package"
done

section "Installing node environment..."
task "node", "./os/install/node.sh"
task "webpack2", "./os/install/node/webpack.sh"
task "typescript", "./os/install/node/typescript.sh"
task "eslint", "./os/install/node/eslint.sh"
task "gulp", "./os/install/node/gulp.sh"

section "Installing scripts..."
task "config & aliases", "./os/install/config.sh"
task "fish shell", "./os/install/fish"

if [ ! -f  "~/.ssh/id_rsa" ]; then
    section "Generating ssh key"
    task "./os/install/git/setup-ssh-keys.sh"
fi