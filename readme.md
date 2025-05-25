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
- `brew install --cask pogrammers-dvorak`
- Reboot after installing
- Open Language input sources
- Add Programmer Dvorak in the English section
- Add Unicode Hex Input in the Other section

## Install Karabiner Elements
- `brew install --cask karabiner-elements`
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

## Install Iterm2
- `brew install --cask iterm2`
- Close terminal and open iterm2

## Install Git
`brew install git`

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

## Install VS Code
- `brew install --cask visual-studio-code`

## Install Oh My Zsh
- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## Install ChatGPT
- `brew install --cask chatgpt`

## Install Visual Studio Code
- `brew install --cask visual-studio-code`

## Install Firefox
- `brew install --cask firefox`

## Install Chrome
- `brew install --cask chrome`

## Install Wget
- `brew install wget`

## Cheat
