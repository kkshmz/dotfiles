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

