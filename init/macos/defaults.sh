

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu

set_global_preferences()
{
# Require password immediately after the computer went into
    # sleep or screen saver mode
    defaults write com.apple.screensaver askForPassword -int 1
    defaults write com.apple.screensaver askForPasswordDelay -int 0


}

set_screenshot_preferences()
{
# Save screenshots to the desktop.
defaults write com.apple.screencapture location "$HOME/Desktop"

# Save screenshots as jpg
defaults write com.apple.screencapture type -string "jpg"
}

# Dashboard {{{1
set_dashboard_preferences()
{
    # Disable Dashboard
    defaults write com.apple.dashboard mcx-disabled -bool true
}
set_dock_preferences()
{

# Automatically hide or show the Dock
defaults write com.apple.dock autohide -bool true

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false



}


set_finder_preferences()
{
# Add 'Quit' to Fider menu
defaults write com.apple.finder QuitMenuItem -bool true

    # Automatically open a new Finder window when a volume is mounted
    defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
    defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
    defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
# Disable the warning when changing a file extension
    defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
    # Set `$Username` as the default location for new Finder windows
    defaults write com.apple.finder NewWindowTarget -string "PfDe"
    defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
      # Don't show recent tags
    defaults write com.apple.finder ShowRecentTags -bool false

    # Show all filename extensions
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true

      # Show the ~/Library directory
    chflags nohidden ~/Library



}

set_keyboard_preferences()
{
# Enable full keyboard access for all controls
    # (e.g. enable Tab in modal dialogs)
    defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

     # Set the key repeat rate to fast
    defaults write NSGlobalDomain KeyRepeat -int 2


}

set_language_and_region_preferences()
{
    # Enable full keyboard access for all controls
    # (e.g. enable Tab in modal dialogs)
    defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

    # Set the key repeat rate to fast
    defaults write NSGlobalDomain KeyRepeat -int 2
}

set_trackpad_preferences()
{
 # Enable `Tap to click`
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
}


set_ui_and_ux_preferences()
{
# Set computer name
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Laptop"
    sudo scutil --set ComputerName "Artemis"
    sudo scutil --set HostName "kkshmz"
    sudo scutil --set LocalHostName "kkshmz"
# Avoid creating `.DS_Store` files on network volumes
    defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

    # Require password immediately after the computer went into
    # sleep or screen saver mode
    defaults write com.apple.screensaver askForPassword -int 1
    defaults write com.apple.screensaver askForPasswordDelay -int 0


    # Disable the "Are you sure you want to open this application?" dialog
    defaults write com.apple.LaunchServices LSQuarantine -bool false

    # Automatically quit the printer app once the print jobs are completed
    defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

    # Enable subpixel font rendering on non-Apple LCDs
    defaults write NSGlobalDomain AppleFontSmoothing -int 2


}

# main
{{{1}}}

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
while true
do
    sudo -n true
    sleep 60;
    kill -0 "$$" || exit
done 2>/dev/null &

set_dashboard_preferences
set_dock_preferences
set_quicklook_preferences
set_finder_preferences
set_keyboard_preferences
set_language_and_region_preferences
set_maps_preferences
set_safari_preferences
set_terminal_preferences
set_textedit_preferences
set_trackpad_preferences
set_transmission_preferences
set_ui_and_ux_preferences
set_global_preferences

killall cfprefsd
killall Dock
killall Finder
killall Safari
killall SystemUIServer
killall TextEdit
killall Transmission
