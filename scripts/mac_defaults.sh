#!/bin/bash

set -e

if ! command -v defaults > /dev/null 2>&1; then
    echo "\`defaults\` not found. Nothing to do."
    exit 0
fi

defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

defaults write -g com.apple.trackpad.scaling -float 2.5
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock tilesize -int 40
defaults write com.apple.dock largesize -int 50
