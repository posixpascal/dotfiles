# dotfiles

This is my current dotfiles setup which I run whenever I install a new machine.

The script configures a few sane defaults, most of them are copied from [mathias dotfiles](https://github.com/mathiasbynens/dotfiles) and edited for my own needs.

It installs a few brew and cask applications like spotify, 1password, microsoft office, etc.

## Preview Gif

![Asciinema Recording](https://github.com/posixpascal/dotfiles/raw/master/recording.gif)

## Brew/Cask

If you want to add additional tools brew and cask should install just create a blank file with the formulae name in the `os/install/[brew|cask]/` folder.

## MacOS defaults
The new macOS defaults are located in `os/defaults` and are applied to:
- Dock
- Finder
- Mail
- Safari
- Spotlight
- System in General

## Wallpaper
Replace the res/wallpaper.png file if you want to apply your own custom wallpaper.

## .dotfiles

This repository includes dotfiles for:

- fish
- bash (aliases)
- curl
- git
- screen
- vim

and also my fish and vim plugins.