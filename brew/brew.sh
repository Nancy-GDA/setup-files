#!/usr/bin/env bash

# Install Homebrew (if not installed)
if test ! $(which brew)
then
    echo "Installing Homebrew for you."

    # Install the correct homebrew for each OS type
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

fi

# Make sure we're using the latest Homebrew.
echo "Update & uhrade homebrew"
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew's installed location.
BREW_PREFIX=$(brew --prefix)
