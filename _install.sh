#!/bin/bash

# Install xcode
sudo softwareupdate -i -a
xcode-select --install


# Apply macOS settings
source osxdefaults.sh

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

brew install asciinema
brew install boost
brew install ffmpeg
brew install fish
brew install jpeg
brew install fd
brew install fzf
brew install php71
brew install python3
brew install p7zip
brew install imagemagick
brew install gifsicle
brew install openssl
brew install lame
brew install gnupg
brew install zlib
brew install tmux
brew install screenfetch
brew install tree
brew install zlib
brew install youtube-dl
brew install pngquant
brew install optipng
brew install nmap
brew install thefuck
brew install pypy
brew install youtube-dl
brew install cloc
brew install ccat
brew install doitlive
brew install httpie
brew install graphviz
brew install mcrypt
brew install node

brew cask install visual-studio-code
brew cask install 1password
brew cask install google-chrome
brew cask install firefox
brew cask install mamp 
brew cask install iterm2
brew cask install transmit
brew cask install postman
brew cask install fantastical
brew cask install spotify
brew cask install little-snitch
brew cask install microsoft-office
brew cask install iina
brew cask install bettertouchtool
brew cask install textual

sudo softwareupdate -i -a 

brew update
brew upgrade

npm install npm -g 
npm update -g

if [ ! -d "~/.config" ]; then 
	mkdir "~/.config"
fi 

# Install fish
cp -R fish/ ~/.config/fish
mv ~/.config/fish/fisherman ~/.config/fisherman

# Install ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable

rvm install ruby-2.3.2
rvm use default ruby-2.3.2

# Install vscode
cp -R vscode ~/.vscode/ 
