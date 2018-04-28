# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/andribjarnason/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

alias ncov="nosetests -c setup_tow_cov.cfg tests/tow"
alias ncovo="open covhtml/index.html"

export GAE_SDK_ROOT="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/platform/google_appengine"
export PATH="$PATH:$GAE_SDK_ROOT"
export PYTHONPATH="$GAE_SDK_ROOT:$PYTHONPATH"

# 'fuck'
eval "$(thefuck --alias)"
# 'fuck' without confirming
alias fuckit='export THEFUCK_REQUIRE_CONFIRMATION=False; fuck; export THEFUCK_REQUIRE_CONFIRMATION=True'

# Run tests
function nose() {
    test=tests
    if ! [ -z ${1+1} ]; then
        # package
        test="$test.$1"
    fi
    if ! [ -z ${2+1} ]; then
        #file
        test="$test.$2"
    fi
    if ! [ -z ${3+1} ]; then
        #class
        test="$test:$3"
    fi
    if ! [ -z ${4+1} ]; then
        #method
        test="$test.$4"
    fi
    echo "Running nosetests-2.7 $test --nocapture --nologcapture"
    nosetests-2.7 $test --nocapture --nologcapture
}

function runportal() {
    cd ~/Desktop/storywriter
    dev_appserver.py . --port 8081 --datastore_path=~/Documents/datastore/datastore.db
}

function remoteshell() {
   remote_api_shell.py -s localhost:8081 
}

# PERSONAL ENV VARS
export TOW_ROOT="$HOME/Desktop/tow"
export GAME_SERVER_ROOT="$HOME/Desktop/game_server"
export GAME_SERVICE_DIR="$GAME_SERVER_ROOT/game_service"

# PERSONAL ALIASES
alias gsuri="git submodule update --recursive --init"
alias qb="$TOW_ROOT/Tools/QuickBuild.py"

# OTHER STUFF
export XDG_RUNTIME_DIR="/tmp"

#+++++ Setup XCODE related shit for debugging

export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"
alias symbolicatecrash="/Applications/Xcode.app/Contents/SharedFrameworks/DVTFoundation.framework/Versions/A/Resources/symbolicatecrash"

#+++++ apportable and compiler related shit
export USE_CCACHE=1
export CCACHE_CPP2=YES
export CCACHE_HARDLINK=true
export CCACHE_SLOPPINESS=file_macro,time_macros,include_file_mtime,include_file_ctime,file_stat_matches
export MTP=0
#export EARLY_LIFECYCLE_DEBUG=1

#export CC="ccache clang -Qunused-arguments"
#export CXX="ccache clang++ -Qunused-arguments"

export DCF_ROOT="$HOME/Desktop/campusstory/Externals/apportable"
export DCF_BUILD="$HOME/Library/Caches/com.pocketgems.build"
export DEVICE_CACHE="$DCF_BUILD/cache"
export TOOLCHAIN_CACHE="$HOME/Library/Caches/com.pocketgems.toolchain"
export BUILD_ROOT="$DCF_BUILD/build"
export PATH="$PATH:$DCF_ROOT/bin"
#export PATH="$PATH:$HOME/workspace/androidsigning/tools"
#export APKSIGN="$HOME/workspace/androidsigning/tools/apksign.py"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
DEFAULT_USER="andri"

eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
