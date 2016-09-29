#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

tap 'homebrew/bundle'

brew 'cinder'
brew 'boost'
brew 'hub'
brew 'tree'
brew 'ffmpeg'
brew 'git'
brew 'docker'
brew 'pandoc'
brew 'osxfuse'
brew 'infinit'
brew 'tmux'
brew 'surge'




# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`
brew 'coreutils'
brew 'moreutils'
brew 'findutils'
brew 'wget'
brew 'mysql'
brew 'opencv'
brew 'dfu-programmer'
brew 'openssl'
brew 'gibo'
// For making oF files into Javascript for the web
brew 'emscripten'
brew 'yuicomp'
brew 'yuicompressor'


brew 'ruby'
brew 'go', args: ['cross-compile-common']
brew 'swift'
brew 'cabal-install'
brew 'haskell-stack'
brew 'npm'
brew 'python'
brew 'sqlite'
brew 'node.js'
brew 'nodebrew'
brew 'python'
brew 'python3'
brew 'newlisp'
brew 'hugo'
brew 'vim', args: ['with-lua', 'with-luajit']
brew 'sqlite'
brew 'zsh', args: ['disable-etcdir']
brew 'hugo'


cask_args appdir: '/Applications'
tap 'caskroom/cask'

cask '1password'
cask 'dropbox'
cask 'firefox'
cask 'vlc'
cask 'processing'
cask 'arduino'
cask 'adobe-creative-cloud'
cask 'osculator'
cask 'makerbot-desktop'
cask 'soundflower'
cask 'google-drive'
cask 'wireshark'
cask 'microsoft-office'
cask 'the-unarchiver'
cask 'inifit'
cask 'imageoptim'
cask 'spectacle'
cask 'scipy'
cask 'skype'
cask 'flux'

cask 'vagrant'
cask 'iterm2'
cask 'slack'
cask 'virtualbox'

# Remove outdated versions from the cellar.
brew cleanup
