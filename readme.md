# Mac Setup

## Add Umbrella Root Cert
- Open an asset from raw.githubusercontent.com in Chrome
  - Example: https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/extravagant-style.png
- Click the red warning icon to the left of the URL bar
- Click "Connection is not secure"
- Click "Certificate is invalid"
- Open finder and navigate to a folder you want to save this cert in
- Select Cisco Umbrella Root CA
- Drag cert icon in left of popup into finder
- Close 
- Open copied cert
- Change dropdown to system and select "Add"
- Select system in left-hand menu
- Double-click "Cisco Umbrella Root CA" in list of system certs
- Expand "Trust" in the popup
- Select "Always trust" and close popup
- Enter password

## Install Homebrew
- Follow instructions from https://brew.sh/
- `/bin/bash -c "$(curl -fksSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- Note: the "k" flag above is required because Cisco Umbrella causes a cert error without it
- Make sure Homebrew directories are owned by you with write permissions: https://stackoverflow.com/questions/16432071/how-to-fix-homebrew-permissions
- Follow instructions Homebrew prints to the console to add Homebrew to system path

## Install Programmer's Dvorak
- `brew install pogrammers-dvorak`
- Reboot after installing
- Open Language input sources
- Add Programmer Dvorak in the English section
- Add Unicode Hex Input in the Other section

## Install Karabiner Elements
- `brew install karabiner-elements`
- Open Karabiner Elements and allow input monitoring when prompted
- Select Simple Modifications tab
- Add Keys in pc keyboards -> application to Modifier keys -> fn
- Add Modifier Keys -> caps_lock to Controls and Symbols -> escape
- Add Keys in pc keyboards -> pause to Media controls -> eject
- On function keys tab check Use all F1, F2, etc. keys as standard function keys
- Select Complex Modifications tab
- Select Add rule
- Select Import more rules from the Internet
- Select Backspace Enhancements from Key Specific section
- Select Add Rule and enable Change shift + delete to forward delete
- In the Misc tab, select Copy the current configuration to the system default configuration

## Install Ligature + Nerd Font
- `brew install font-jetbrains-mono-nerd-font`

## Install Iterm2
- `brew install iterm2`
- Close terminal and open iterm2

### Set Iterm2 color scheme
- Open Settings -> Profiles -> Default -> colors -> Color Presets... -> Import...
- Import color scheme from assets/iterm-themes
- Change Font to JetBrains Mono NF
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
- Note: if Cisco Umbrella is active without trusted root certificate, download and install MesloLGS fonts first, then select "no" to install the custom font in the p10k install wizard.
- Restart Iterm2 and follow prompts in p10k wizard

## Install LazyVim
`brew install neovim`
`git clone https://github.com/LazyVim/starter ~/.config/nvim`
`nvim`

## Install Git
`brew install git`
- Copy assets/.gitconfig to ~
- Edit ~/.gitconfig with username and email

## Install Lazygit
`brew install lazygit`

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

### SSH key for work Github

#### Generate key
`ssh-keygen -t ed25519 -C "{work_email}" -f ~/.ssh/github_work`

#### Add to ssh-agent
- Ensure SSH Agent is running
- `eval "$(ssh-agent -s)"`
- Add key to ssh-agent
- `ssh-add --apple-use-keychain ~/.ssh/github_work`

#### Add key to GitHub
- Copy public key to clipboard
- `cd ~/.ssh`
- `pbcopy < ~/.ssh/github_work.pub`
- Open github.com -> log in -> Settings -> SSH and GPG Keys -> New SSH key
- Name the key and paste the copied value

### Add keys to SSH config

- Open SSH config for editing
- `vim ~/.ssh/config`
- Add the following lines:
```bash
Host github.com
  Hostname github.com
  IdentityFile ~/.ssh/github
  PreferredAuthentications publickey
  User git

Host gh_work
  Hostname github.com
  IdentityFile ~/.ssh/github_work
  PreferredAuthentications publickey
  User git

Host *
  AddKeysToAgent yes
```

> When cloning a repository from a work repo, use gh_work instead of github.com.

> If you have already cloned the repository, configure it to use the alias by navigating to the project directory and run: `git remote set-url origin {alias}:{user}/{repo}`

### Personal Access Token for shared components 

## Install Visual Studio Code
- `brew install visual-studio-code`

### Log into VS Code with GitHub
- Select gear in bottom left
- Select Turn on Settings Sync...

## Install NVM
- `brew install nvm`
- Follow post-install instructions (add nvm working directory and configure zshrc)

## Install ChatGPT
- `brew install chatgpt`

## Install Claude
- `brew install claude`

## Install Firefox
- `brew install firefox`

## Install Chrome
- `brew install chrome`

## Install Ksnip
- `brew install ksnip`

## Install Gimp
- `brew install gimp`

## Install Wget
- `brew install wget`

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
