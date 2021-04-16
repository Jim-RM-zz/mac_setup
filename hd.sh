#!/usr/bin/env bash

# Installs Homebrew - will install xcode command line tools if missing
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installs brew casks / apps
brew install --cask google-chrome
brew install --cask slack
brew install --cask 1password
brew install --cask malwarebytes
brew install --cask miro

# Install for plain old Teamviewer is default, but uncomment the line
# below if you would rather install host.
brew install --cask teamviewer
# brew install --cask teamviewer-host

# This is for the desktop cloud app, from in here you can then install
# the speci Adobe apps you need to
brew install --cask adobe-creative-cloud

# These installs below will prompt / require a password to install
brew install --cask zoom
brew install --cask microsoft-teams # Micros Teams will prompt for a password to complete install
brew install --cask microsoft-office # Will prompt for a password to complete install


# checks / upgrades brew casks
brew upgrade

# Uninstall script for Homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
