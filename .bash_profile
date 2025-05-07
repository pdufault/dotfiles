# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration
export BASH_IT="/Users/$USER/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='slick-no-ruby'
# export BASH_IT_THEME='slick' # old, shows ruby

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

if [[ -f ~/.bash_settings ]]; then
  source ~/.bash_settings
fi

# Load Bash It
source "$BASH_IT"/bash_it.sh

# use new GCP plugin for auth
export USE_GKE_GCLOUD_AUTH_PLUGIN=True 

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/libpq/bin:$PATH"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export EDITOR=vim
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:$HOME/bin"

export PATH=/opt/homebrew/Cellar/httpie/3.2.3/bin/:$PATH


eval "$(~/.local/bin/mise activate bash)"
eval "$(/opt/homebrew/bin/brew shellenv)"
if command -v ngrok &>/dev/null; then
    eval "$(ngrok completion)"
fi
# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.bash 2>/dev/null || :
builtin source "/Applications/Ghostty.app/Contents/Resources/ghostty/shell-integration/bash/ghostty.bash"


