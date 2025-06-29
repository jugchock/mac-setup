# this file is read when starting new login shell, before .zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# set initial shell level
export INIT_SHELL_LEVEL=$SHLVL

# encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# history
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# path variable
export PATH=/usr/local/bin:/usr/local/sbin:"$PATH"
