# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

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
 COMPLETION_WAITING_DOTS="true"

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
plugins=(git virtualenv virtualenvwrapper brew osx meteor node npm python docker bower z)

# User configuration

export PATH="/usr/local/bin:$PATH"

export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export NVM_DIR="/Users/mienna/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export NODE_PATH="/usr/local/lib/node_modules"

#export PATH="$HOME/.npm-packages/bin:$PATH"
# export NPM_PACKAGES=~/.npm-packages
# export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
# export NODE_PATH=$NODE_PATH:/usr/local/Cellar/node/0.12.2_1/lib/node_modules
# export PATH=$PATH:$NPM_PACKAGES/bin
# export DOCKER_MAC_NATIVE=0
# export PATH=$PATH:/usr/local/share/npm/bin/
# export PATH=$PATH:/usr/local/opt/mysql/bin/
# export PATH=$PATH:/usr/local/var/postgres/bin/
# export PGDATA="/usr/local/var/postgres/"
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Developer/
# source /usr/local/bin/virtualenvwrapper.sh
# export PATH="$PATH:$HOME/.rvm/bin"
# export PATH="/Users/mienna/.virtualenvs/python3_ai/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:/Users/mienna//.npm-packages/bin:/Users/mienna/.npm-packages/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/mienna/Developer/tools/depot_tools/:/usr/local/opt/mysql/bin/:/usr/local/var/postgres/bin/"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mongod="mongod --config=/etc/mongodb.conf"
alias els="elasticsearch"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgstatus="pg_ctl -D /usr/local/var/postgres status"
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias ls="ls -GFh"
alias ll='ls -hl'
alias la='ls -a'
alias lla='ls -lah'
alias gem-install='sudo gem install -n /usr/local/bin'

export PATH="/usr/local/sbin:$PATH"
