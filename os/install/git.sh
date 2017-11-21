source ./utils/formatting.sh

if [ ! -x $(command -v git) ]; then
    subtask "Installing"
    brew install git
fi

subtask "Copying configuration"
cp config/.gitconfig ~/.gitconfig
cp config/.gitignore ~/.gitignore
