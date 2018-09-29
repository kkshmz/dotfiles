# dotfiles

Before doing anything, make sure you know what are you doing! Settings applied by this repository are very personal, and definitely not suite everyones needs. I suggest to create your own set of dotfiles based on this repo.

1. Install brew.

2. Install git.

``brew install git``

3. Clone repository to hidden .dotfile directory in your home directory

```git clone git@github.com:pawelgrzybek/dotfiles.git ~/.dotfile```

4. Run setup-symlinks.sh.

`source ~/.dotfiles/setup-symlinks.sh`

5. Same with setup-macos.sh file.

`source ~/.dotfiles/setup-osx.sh`

6. Same with setup-brew.sh file.

`source ~/.dotfiles/setup-osx.sh`







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

## Qiita
http://qiita.com/yoppa/items/41805cc6af62b1047a34
