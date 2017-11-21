#!/bin/bash
source ./utils/colors.sh
source ./utils/formatting.sh

section "Installing HomeBrew & Formulae..."
task "HomeBrew" "./os/install/brew.sh"

HOMEBREW_DEPENDENCIES=$(ls ./os/install/brew/)
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