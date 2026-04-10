# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Homebrew environment setup
eval "$(/opt/homebrew/bin/brew shellenv)"

# Pyenv setup
eval "$(pyenv init -)"

# Oh My Zsh
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Color & pager settings (set after OMZ to avoid overrides)
export PAGER=less
export LESS='-RFX'
export MANPAGER="sh -c 'col -bx | bat -l man -p' sh"
export BAT_PAGER='less -RFX'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# direnv
eval "$(direnv hook zsh)"

# Theme
# source ~/.z-monokai
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/opt/powerlevel10k/share/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# override zsh-syntax-highlighting defaults
ZSH_HIGHLIGHT_STYLES[path]=
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=fg=black,bold
ZSH_HIGHLIGHT_STYLES[path_prefix]=

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias profile="cat ~/.zshrc|more"
alias edit-profile="nvim ~/.zshrc"
alias load-profile="source ~/.zshrc"
alias ll="ls -lhA|more"
alias gp="git pull --rebase"
alias gb="git checkout -b "
alias gc="git commit -m "
alias gca="git commit -a -m "
alias git-prune="git fetch -p"
alias git-prune-gone="git fetch --prune && git branch -vv | grep ': gone]' | awk '{print \$1}' | xargs git branch -D"
alias git-prune-mine="git branch --list 'cchock/RC-*' | xargs git branch -D"
alias prov="./Portable/Build/Configure.sh ORV Dev"
alias count-lines="( find -E . -regex '.*\.(ts|scss|html)$' -print0 | xargs -0 cat ) | sed '/^\s*$/d;/^\s*\//d;/^\s*<\!--/d' | wc -l"
alias count-ts="( find -E . -regex '.*\.ts$' -print0 | xargs -0 cat ) | sed '/^\s*$/d;/^\s*\//d;/^\s*<\!--/d' | wc -l"
alias count-css="( find -E . -regex '.*\.scss$' -print0 | xargs -0 cat ) | sed '/^\s*$/d;/^\s*\//d;/^\s*<\!--/d' | wc -l"
alias count-html="( find -E . -regex '.*\.html$' -print0 | xargs -0 cat ) | sed '/^\s*$/d;/^\s*\//d;/^\s*<\!--/d' | wc -l"
alias flatten="find . -mindepth 2 -type f -exec mv -t . -i '{}' +"
alias ip="curl ifconfig.me"

# GitHub CLI auto-account switching
# Automatically switches to work account for Polaris repos, personal account otherwise
function gh() {
  local target_account="jugchock"

  # Check if we're in a git repo and it's a Polaris repo
  if git rev-parse --git-dir > /dev/null 2>&1; then
    local remote_url=$(git config --get remote.origin.url 2>/dev/null)
    if [[ "$remote_url" == *"Polaris"* || "$remote_url" == *"gh_polaris"* ]]; then
      target_account="cchock_polaris"
    fi
  fi

  # Get current active account
  local current_account=$(command gh auth status --active 2>&1 | grep "Logged in to github.com account" | awk '{print $6}')

  # Switch if needed (silently)
  if [[ "$current_account" != "$target_account" ]]; then
    command gh auth switch --user "$target_account" > /dev/null 2>&1
  fi

  # Run the actual gh command
  command gh "$@"
}
