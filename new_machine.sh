#!/usr/bin/env bash

# Installs Homebrew - will install xcode command line tools if missing
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installs brew casks / apps
brew install --cask google-chrome
brew install --cask slack
brew install --cask microsoft-teams # Micros Teams will prompt for a password to complete install
brew install --cask microsoft-office # Will prompt for a password to complete install
brew install --cask zoom
brew install --cask 1password
brew install --cask malwarebytes

# Install for plain old Teamviewer is default, but uncomment the line
# below if you would rather install host.
brew install --cask teamviewer
# brew install --cask teamviewer-host


# This is for the desktop cloud app, from in here you can then install
# the speci Adobe apps you need to
brew install --cask adobe-creative-cloud

# checks / upgrades brew casks
brew upgrade

# Uninstall script for Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"

# Directoires not removed with the Homebrew uninstall script
# These don't have to be removed, but if you'd like Homebrew wiped off fresh
# then go ahead and uncomment the below, which will remove the bits that the
# uninstaller won't remove / catch.

:'
rm -r {
  /usr/local/.com.apple.installer.keep
  /usr/local/Frameworks/
  /usr/local/Homebrew/
  /usr/local/bin/
  /usr/local/etc/
  /usr/local/include/
  /usr/local/lib/
  /usr/local/opt/
  /usr/local/sbin/
  /usr/local/share/
  /usr/local/var/
  }
'
