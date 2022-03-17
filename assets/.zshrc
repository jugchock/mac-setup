# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/{user}/.oh-my-zsh"

export LESS="-X"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

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

# Git Branch Autocompletion
# https://dev.to/oliverspryn/adding-git-completion-to-zsh-26id
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

###########
# Aliases
###########

alias profile="cat ~/.zshrc|more"
alias edit-profile="vim ~/.zshrc"
alias load-profile="exec zsh"
alias ll="ls -lhA|more"
alias gp="git pull --rebase"
alias gb="git checkout -b "
alias gc="git commit -m "
alias gca="git commit -a -m "
alias git-prune="git fetch -p"
alias git-list-merged="git branch --merged master | grep -v -e \"^\s\+master$\" -e \"^\s\+feature\/.\+\" -e \"^\s\+release\/v[0-9.]\+$\" -e \"^\s\+rel$\" -e \"^\s\+dev$\""
alias git-del-merged="git-list-merged | xargs -n 1 git branch -d"
alias git-list-merged-remote="for branch in \`git branch -r --merged | grep -v HEAD\`; do echo -e \`git show --format=\"%ci %cr %an\" \$branch | head -n 1\` \\\t\$branch; done | sort -r"
alias git-del-remote="git branch -r --merged master | grep -v master | sed 's/origin\///' | xargs -n 1 git push --delete origin"
alias prov="./Portable/Build/Configure.sh ORV Dev"
alias count-lines="( find -E . -regex '.*\.(ts|scss|html)$' -print0 | xargs -0 cat ) | sed '/^\s*$/d;/^\s*\//d;/^\s*<\!--/d' | wc -l"
alias count-ts="( find -E . -regex '.*\.ts$' -print0 | xargs -0 cat ) | sed '/^\s*$/d;/^\s*\//d;/^\s*<\!--/d' | wc –l"
alias count-css="( find -E . -regex '.*\.scss$' -print0 | xargs -0 cat ) | sed '/^\s*$/d;/^\s*\//d;/^\s*<\!--/d' | wc –l"
alias count-html="( find -E . -regex '.*\.html$' -print0 | xargs -0 cat ) | sed '/^\s*$/d;/^\s*\//d;/^\s*<\!--/d' | wc –l"
alias flatten="find . -mindepth 2 -type f -exec mv -t . -i '{}' +"
alias ip="curl ifconfig.me"
# alias aws="docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli"
# alias base64="echo \"echo -n {input} | openssl base64 | pbcopy\""

###########
# NVM
###########

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

###########
# Homebrew
###########

export HOMEBREW_NO_GITHUB_API=1
