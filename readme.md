# Mac Setup

## Switch to dark mode
- Settings -> Appearance -> Dark

## Enable Dvorak keyboard
- Open settings -> Keyboard -> Text Input -> Edit...
- Add an input source (click the "+" button in the lower left)
- Select Dvorak and click "Add"

## Install Homebrew
- Follow instructions from https://brew.sh/
- Copy the install command, it should look something like:
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - Note: add the "k" flag to the command if install fails due to Cisco Umbrella cert errors
- Open terminal app and paste and run command
- Make sure Homebrew directories are owned by you with write permissions: https://stackoverflow.com/questions/16432071/how-to-fix-homebrew-permissions
- Follow instructions Homebrew prints to the console to add Homebrew to system path

## Install Programmer's Dvorak
- `brew install pogrammer-dvorak`
- Reboot after installing
- Open settings -> Keyboard -> Text Input -> Edit...
- Add Programmer Dvorak in the English section
- Add Unicode Hex Input in the Others section

## Install Git
`brew install git`
- Copy assets/.gitconfig to ~
- Edit ~/.gitconfig with username and email

### SSH key for personal Github

#### Generate key
`ssh-keygen -t ed25519 -C "{personal_email}" -f ~/.ssh/github`

#### Configure ssh-agent to use keys
- Ensure SSH Agent is running
- `eval "$(ssh-agent -s)"`
- Add key to ssh-agent
- `ssh-add --apple-use-keychain ~/.ssh/github`

#### Add key to GitHub
- Copy public key to clipboard
- `cd ~/.ssh`
- `pbcopy < ~/.ssh/github.pub`
- Open github.com -> log in -> Settings -> SSH and GPG Keys -> New SSH key
- Name the key and paste the copied value

## Clone this repo
- Create ~/Projects
- cd ~/Projects
- copy clone command from repo
  - Should be similar to `clone git@github.com:jugchock/mac-setup.git`

## Install Visual Studio Code
- `brew install visual-studio-code`

### Log into VS Code with GitHub
- Select gear in bottom left
- Select Turn on Settings Sync...
- Log in with GitHub

## Install Firefox
- `brew install firefox`
- Keep "Keep Firefox in Dock" and "Set Firefox as default browser" checked
- Uncheck "Import from previous browser"
- Skip explore extensions step
- Select "Sign up or sign in"

## Install Karabiner Elements
- `brew install karabiner-elements`
- Open Karabiner Elements and allow input monitoring when prompted
- Select Simple Modifications tab
- Add "Keys in pc keyboards -> application" to "Modifier keys -> fn"
- Add "Modifier Keys -> caps_lock" to "Controls and Symbols -> escape"
- Add "Keys in pc keyboards -> pause" to "Media controls -> eject"
- On function keys tab check Use all F1, F2, etc. keys as standard function keys
- Select Complex Modifications tab
- Select "Add rule"
- Select "Import more rules from the Internet"
- Search for "backspace"
- Select "Backspace Enhancements"
- Select Add Rule and enable "Map Shift + Backspace to Forward Delete"
- In the Misc tab, select Copy the current configuration to the system default configuration

## Install Ligature + Nerd Font
- `brew install font-jetbrains-mono-nerd-font`

## Install Iterm2
- `brew install iterm2`
- Close terminal and open iterm2

### Set Iterm2 color scheme
- Open Settings -> Profiles -> Default -> colors -> Color Presets... -> Import...
- Import Monokai_Pro and Monokai_Pro_Light color themes from assets/iterm-themes
- Select "Editing: -> Light Mode"
- Select "Color Preset: -> Color Presets... -> Monokai_Pro_Light"
- Select "Update Light Mode Only"
- Select "Editing: -> Dark Mode"
- Select "Color Preset: -> Color Presets... -> Monokai_Pro"
- Select "Update Dark Mode Only"
- Navigate to Text tab
- Change Font to "JetBrainsMonoNL Nerd Font Mono"
- Select Use ligatures

### Install Monokai Pro ZSH theme
- Follow instructions from https://monokai.pro/zsh

### Install Oh My Zsh
- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### Configure Vim
- Copy assets/vim/* to ~/.vim
- `cp -R assets/vim/ ~/.vim`

### Install Powerlevel10k
- `brew install romkatv/powerlevel10k/powerlevel10k`
- `echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc`
- Choose not to install MesloGS font, use the current (Jetbrains Nerd Font)
- Restart Iterm2 and follow prompts in p10k wizard
- Edit ~/.p10k.zsh
  - Change 4 to 5 for POWERLEVEL9K_DIR_BACKGROUND

## Install LazyVim
`brew install neovim`
`git clone https://github.com/LazyVim/starter ~/.config/nvim`
`nvim`

## Install Lazygit
`brew install lazygit`

## Install NVM
- `brew install nvm`
- Follow post-install instructions (add nvm working directory and configure zshrc)

## Install ChatGPT
- `brew install chatgpt`

## Install Claude
- `brew install claude`

## Install Chrome
- `brew install google-chrome`

## Install Gimp
- `brew install gimp`

## Install Wget
- `brew install wget`

## Install Python
- `brew install pyenv`
- update .zshrc
   ```bash
  # pyenv setup
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  ```
- Install latest python:
  `pyenv install 3.12.3`
  `pyenv global 3.12.3`
- Ensure Pip is installed and updated
  `python -m ensurepip --upgrade`
  `python -m pip install --upgrade pip`
- Install Virtualenv
  `python -m pip install virtualenv`


## Others
- `brew install cursor`
- `npm i -g @anthropic-ai/claude-code`
- `brew install zeplin`
- `brew install vlc`
- `brew install smplayer`
- `brew install ffmpeg`
- `brew install most`
- `brew install openmtp`
- `brew install appcleaner`
- `brew install jubler`
- `brew install mkvtoolnix`
- `brew install the-unarchiver`
- `brew install prusaslicer`
- `brew install 4k-video-downloader`
- `brew install upscayl`
- `brew install spotify`
- Skitch - no longer supported - copy on NAS
- Spectacle - no longer supported - copy on NAS
- Libation - 

## Cheat
