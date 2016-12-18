PATH=$PATH:/usr/local/bin
PATH="$PATH:$(brew --prefix)/bin"

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
alias ios="open/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

eval "$(pyenv init -)"

export OPENNI2_INCLUDE=/usr/local/include/ni2
export OPENNI2_REDIST=/usr/local/lib/ni2

export CLICOLOR=1

# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"

# Can manage everything e.g., other person's zshrc
zplug "b4b4r07/enhancd"

# Load theme file
zplug "agnoster/agnoster-zsh-theme", as:theme

zplug "joel-porquet/zsh-dircolors-solarized"

# Supports oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh


# Load if "if" tag returns true
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"


# Note: To specify the order in which packages should be loaded, use the nice
#       tag described in the next section

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", nice:10


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
	    printf "Install? [y/N]: "
	        if read -q; then
			        echo; zplug install
				    fi
				    fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
export PATH="/usr/local/bin:$PATH"

