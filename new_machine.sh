#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install google-chrome
brew install --cask slack
brew install --cask microsoft-teams
brew install --cask zoom
brew install --cask 1password
brew install --cask malwarebytes
brew install --cask adobe-creative-cloud

brew upgrade

#/usr/local/bin/brew install [app]

# Uninstall script for Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
