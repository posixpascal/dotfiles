source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

rvm default
set SHELL fish
set PATH $PATH ~/Projects/shellscripts
set PATH $PATH ~/Projects/shellscripts/trooper/
set PATH $PATH ~/Library/Android/sdk/platform-tools
set PATH $PATH ~/Library/Android/sdk/build-tools/27.0.1/
set PATH $PATH ~/.composer/vendor/bin

set EDITOR vim
rvm default
eval (thefuck --alias | tr '
' ';')
