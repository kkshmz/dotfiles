#for ssh and mosh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

PATH=$PATH:/usr/local/bin
PATH="$PATH:$(brew --prefix)/bin"

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

eval "$(pyenv init -)"

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

alias vi=vim

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


#for emscripten
local EMSCRIPTEN_PATH="$HOME/Workspace/emsdk_portable/emscripten/1.35.0"
export PATH="$EMSCRIPTEN_PATH:$PATH"
export PATH=/usr/local/Cellar/ruby/2.4.1_1/bin:$PATH

#for android development
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
