# Sets reasonable macOS defaults.
#
# Or, in other words, set shit how I like in macOS.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat.
# defaults write -g ApplePressAndHoldEnabled -bool false

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
# chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

# Set the Fn keys as F1-F12
defaults write "Apple Global Domain" "com.apple.keyboard.fnState" "1"

# Show hiden files in Finder
defaults write com.apple.finder AppleShowAllFiles --boolean TRUE

# Setup the dock
defaults write com.apple.dock tilesize -int 32

killall Dock
