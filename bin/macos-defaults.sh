# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# Sources:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#	https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
#	https://github.com/holman/dotfiles/blob/master/macos/set-defaults.sh

#Enable text replacement in 'all' apps
defaults write -g WebAutomaticTextReplacementEnabled -bool true

# Disable press-and-hold for keys in favor of key repeat.
#defaults write -g ApplePressAndHoldEnabled -bool false

# ==============================================
# Finder
# ==============================================

# New window points to home
defaults write com.apple.finder NewWindowTarget -string "PfHm"

#disable Shift for slow animations
defaults write com.apple.finder FXEnableSlowAnimation -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle clmv

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
#defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Show indicator lights for open applications in the Dock
#defaults write com.apple.dock show-process-indicators -bool true

# Set up Safari for development.
#defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
#defaults write com.apple.Safari IncludeDevelopMenu -bool true
#defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
#defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
#defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Set Help Viewer windows to non-floating mode
defaults write com.apple.helpviewer DevMode -bool true

# Use scroll gesture with the Ctrl (^) modifier key to zoom
#defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
#defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Menu bar: hide the useless Time Machine and Volume icons
#defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# Menu bar: show remaining battery time (on pre-10.8); hide percentage
#defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable the warning when changing a file extension
#defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.2

# Add iOS Simulator to Launchpad
ln -s /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app /Applications/iOS\ Simulator.app

# ==============================================
# Desktop & Screen Saver
# ==============================================

# Ask for password after 5 seconds
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# Screen Saver: Flurry
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName -string "Flurry" path -string "/System/Library/Screen Savers/Flurry.saver" type -int 0

# Hot corners -> top left -> mission control
defaults write com.apple.dock "wvous-tl-corner" -int 2
defaults write com.apple.dock "wvous-bl-modifier" -int 0

# Hot corners -> top right -> mission control
defaults write com.apple.dock "wvous-tl-corner" -int 2
defaults write com.apple.dock "wvous-bl-modifier" -int 0


###############################################################################
# Mail                                                                        #
###############################################################################

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
#defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
#defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

###############################################################################
# Mac App Store                                                               #
###############################################################################

# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true

###############################################################################
# Google Chrome & Google Chrome Canary                                        #
###############################################################################

# Allow installing user scripts via GitHub or Userscripts.org
#defaults write com.google.Chrome ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"
#defaults write com.google.Chrome.canary ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"


###############################################################################
# Twitter.app                                                                 #
###############################################################################

# Disable smart quotes as it’s annoying for code tweets
#defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false

# Show the app window when clicking the menu icon
#defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

# Enable the hidden ‘Develop’ menu
#defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true

# Open links in the background
#defaults write com.twitter.twitter-mac openLinksInBackground -bool true

# Allow closing the ‘new tweet’ window by pressing `Esc`
#defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

# Show full names rather than Twitter handles
#defaults write com.twitter.twitter-mac ShowFullNames -bool true

# Hide the app in the background if it’s not the front-most window
#defaults write com.twitter.twitter-mac HideInBackground -bool true


###############################################################################
# Alfred.app                                                                 #
###############################################################################

#defaults write com.alfredapp.Alfred alfred.sync.folder -string "${HOME}/Dropbox/Synced Settings"

###############################################################################
# Mou.app                                                                 #
###############################################################################

#defaults write com.mouapp.Mou selectedCSSKeyString -string "GitHub"
#defaults write com.mouapp.Mou selectedThemeKeyString -string "Mou Night+"

