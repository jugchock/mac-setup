# this file is read when starting new login shell, before .zshrc

# Language & locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Homebrew base paths
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# History
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Android SDK
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin

# Java
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# Add personal scripts to path
export PATH="$HOME/bin:$PATH"

# Custom shell nesting indicator (optional)
export INIT_SHELL_LEVEL=$SHLVL
