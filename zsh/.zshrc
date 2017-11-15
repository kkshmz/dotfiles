export PATH=/usr/local/miniconda3/bin:"$PATH"
export OPENNI2_INCLUDE=/usr/local/include/ni2
export OPENNI2_REDIST=/usr/local/lib/ni2
export NITE2_INCLUDE=/usr/local/Cellar/NiTE/Include
export NITE2_REDIST64=/usr/local/Cellar/NiTE/Redist
export DYLD_FALLBACK_LIBRARY_PATH="$OPENNI2_REDIST:$NITE2_REDIST64:$DYLD_FALLBACK_LIBRARY_PATH"

PATH=$PATH:/usr/local/bin
PATH="$PATH:$(brew --prefix)/bin"

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

eval "$(pyenv init -)"

export OPENNI2_INCLUDE=/usr/local/include/ni2
export OPENNI2_REDIST=/usr/local/lib/ni2

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'


# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"

# Can manage everything e.g., other person's zshrc
zplug "b4b4r07/enhancd"

# Load theme file
zplug "benniemosher/the-one-theme", as:theme
zplug "geometry-zsh/geometry"


# Supports oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh

# Note: To specify the order in which packages should be loaded, use the nice
#       tag described in the next section

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:3

# Better history searching with arrow keys
if zplug check "zsh-users/zsh-history-substring-search"; then
	    bindkey "$terminfo[kcuu1]" history-substring-search-up
	        bindkey "$terminfo[kcud1]" history-substring-search-down
		fi


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
