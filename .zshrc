# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# add brew installed grep to PATH
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# add pytest folder to PATH
export PATH="/Users/chadmin/Library/Python/3.12/bin:$PATH"

# Add Anaconda to PATH
#export PATH="/usr/local/anaconda3/bin:$PATH"

# move brew python3.10 to the front of PATH
#export PATH="/usr/local/opt/python@3.10/Frameworks/Python.framework/Versions/3.10/bin:$PATH"
#export PATH="/usr/local/opt/python@3.10/bin:$PATH"

#export PATH="/usr/local/lib/python3.10/site-packages:$PATH"

# poetry PATH adjustment -- change for 3.10
# export PATH="$PATH:/Users/chadmin/Library/Python/3.8/bin"

# Path to your oh-my-zsh installation.
export ZSH="/Users/chadmin/.oh-my-zsh"

# Set openssl 3 first in PATH
export PATH="/usr/local/opt/openssl@3/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="kphoen"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# set history file variable
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Homebrew Completion Requirement
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
# End Homebrew Completion Requirement

# pipx Completion Requirement
autoload -U bashcompinit
bashcompinit

eval "$(register-python-argcomplete pipx)"
# End pipx Completion Requirement

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# aliases
alias -g ll='ls -lah'
# be confident that I am using the python 3.10 pip
alias pip310='/usr/local/opt/python@3.10/bin/pip3' 
alias dds='docker run -it --rm -v $(pwd):/malware chadmando/dssuite'

# 0h-my-posh add
eval "$(oh-my-posh --init --shell zsh --config ~//.my-omp-theme.json)"

# Created by `pipx` on 2022-02-05 17:44:25
export PATH="$PATH:/Users/chadmin/.local/bin"
