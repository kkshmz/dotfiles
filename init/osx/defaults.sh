#!/bin/bash

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu

set_dashboard_preferences() 
{

}

set_dock_preferences() 
{
# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false



}

set_quicklook_preferences() 
{

}


set_finder_preferences() 
{

}

set_keyboard_preferences() 
{

}

set_language_and_region_preferences() 
{

}

set_maps_preferences() 
{

}

set_textedit_preferences()
{ 

}

set_trackpad_preferences()
{

}

set_transmission_preferences()
{

}

set_ui_and_ux_preferences()
{

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

killall cfprefsd
killall Dock
killall Finder
killall Safari
killall SystemUIServer
killall TextEdit
killall Transmission
