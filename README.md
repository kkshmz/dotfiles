I wanted to make something that was modular and fit whatever bill was needed when I needed some configurations, whether that was just some of them, or all of them.

One command curl for dotfiles
`curl https://github.com/kkshmz/dotfiles/master/blob/install.sh | bash`

## Credits
I acknowledgethat this repository of my dotfiles are referring to the following user's repositories. Thus, I would like to list them here now.

* Installation section based on [@b4b407's dotfiles](https://github.com/b4b407/dotfiles)

## License [![](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]
### OS X

When setting up a new Mac, you may want to perform the following tasks mainly.

- Install the Xcode Command Line Tools

	You need to have Xcode or, at the very minimum, the Xcode Command Line Tools, which are available as a much smaller download.
	
	The easiest way to install the [Xcode Command Line Tools](https://developer.apple.com/downloads) in OS X 10.9+ is to open up a terminal, type `xcode-select --install` and follow the prompts.

- Install Homebrew and setup their formulae

	Since OS X does not have a native package manager that you can use from the command line, [Brew](http://brew.sh) (also known as Homebrew), has filled in. 
	
	After installing Homebrew, you may want to install some common Homebrew formulae:
	
	```console
	$ make init
	```
	
- Run some `defaults` commands

	It can set many hidden settings and preferences in Mac OS X, and in individual applications.

All of these are included in the `make init` for OS X. For more detail, see also [here][platform] of documentation of OS X operation.

## Homebrew

```
tap 'caskroom/cask'
tap 'caskroom/versions'
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'homebrew/python'
tap 'homebrew/science'
cask 'java'

brew 'autoconf'
brew 'autoenv'
brew 'bfg'
brew 'libpng'
brew 'freetype'
brew 'pkg-config'
brew 'fontconfig'
brew 'gettext'
brew 'libffi'
brew 'pcre'
brew 'glib'
brew 'pixman'
brew 'cairo'
brew 'git'
brew 'gobject-introspection'
brew 'jpeg'
brew 'xz'
brew 'libtiff'
brew 'shared-mime-info'
brew 'gdk-pixbuf'
brew 'libcroco'
brew 'icu4c'
brew 'harfbuzz'
brew 'pango'
brew 'librsvg'
brew 'emacs'
brew 'cask'
brew 'cctools'
brew 'cmake'
brew 'coreutils'
brew 'doxygen'
brew 'pcre2'
brew 'fish'
brew 'gdbm'
brew 'ghc'
brew 'little-cms2'
brew 'ghostscript'
brew 'go'
brew 'haskell-stack'
brew 'hub'
brew 'hugo'
brew 'openssl'
brew 'libevent'
brew 'libquicktime'
brew 'readline'
brew 'sqlite'
brew 'python'
brew 'libxml2'
brew 'libyaml'
brew 'mas'
brew 'mecab'
brew 'moreutils'
brew 'nkf'
brew 'node'
brew 'pandoc'
brew 'pyenv'
brew 'pyenv-virtualenv'
brew 'pyenv-virtualenvwrapper'
brew 'python3'
brew 'ruby'
brew 'speedtest_cli'
brew 'texi2html'
brew 'utf8proc'
brew 'tmux'
brew 'tree'
brew 'zsh', args: ['without-etcdir']
brew 'zplug'
brew 'homebrew/python/numpy'
cask '1password'
cask 'adobe-illustrator-cc'
cask 'adobe-indesign-cc'
cask 'adobe-photoshop-cc'
cask 'adobe-photoshop-lightroom'
cask 'adobe-photoshop-lightroom600'
cask 'adobe-reader'
cask 'arduino'
cask 'atom'
cask 'dropbox'
cask 'flux'
cask 'google-chrome'
cask 'google-drive'
cask 'haskell-platform'
cask 'iterm2'
cask 'jupyter-notebook-ql'
cask 'makerbot-desktop'
cask 'openframeworks'
cask 'processing'
cask 'processing2'
cask 'qlmarkdown'
cask 'sketch'
cask 'skype'
cask 'slack'
cask 'sourcetree'
cask 'spectacle'
cask 'spotify'
cask 'sublime-text'
cask 'supercollider'
cask 'thunderbird'
cask 'unity'
cask 'vagrant'
cask 'virtualbox'
cask 'visual-studio-code'
cask 'webstorm'
mas 'Numbers', id: 409203825
mas 'Keynote', id: 409183694
mas 'Xcode', id: 497799835
mas 'LINE', id: 539883307
mas 'Pages', id: 409201541
mas 'Xcode', id: 497799835
mas 'LINE', id: 539883307
mas 'Keynote', id: 409183694
mas 'Pages', id: 409201541
mas 'Bear', id: 1091189122
mas 'Numbers', id: 409203825
```


## Qiita
http://qiita.com/yoppa/items/41805cc6af62b1047a34
