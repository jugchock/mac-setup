# Mac Setup

## Install Programmer's Dvorak
* Download the installer from http://www.kaufmann.no/roland/dvorak/macosx.html
* Programmer Dvorak is on Homebrew but has installation issues
* Hold down control when opening file
* Reboot after installing
* Open Keyboard Settings -> Input Sources
* Add Programmer Dvorak and Unicode Hex Input

## Install Homebrew
* Follow instructions from https://brew.sh/
* `/bin/bash -c "$(curl -fksSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
* Note: the "k" flag above is required because Cisco Umbrella causes a cert error without it
* Make sure Homebrew directories are owned by you with write permissions: https://stackoverflow.com/questions/16432071/how-to-fix-homebrew-permissions
* Follow instructions Homebrew prints to the console to add Homebrew to system path

## Install Karabiner Elements
* `brew install --cask karabiner-elements`
* Open Karabiner Elements and allow input monitoring when prompted
* Select Simple Modifications tab
* Add application -> fn
* Add caps_lock -> escape
* Add pause -> eject
* On function keys tab check Use all F1, F2, etc. keys as standard function keys
* Select Complex Modifications tab
* Select Add rule
* Select Import more rules from the Internet
* Select Backspace Enhancements from Modifier Keys section
* Select Add Rule and enable Change shift + delete to forward delete
* In the Misc tab, select Copy the current configuration to the system default configuration

## Install Iterm2
* `brew install --cask iterm2`
* Close terminal and open iterm2

## Install Git
`brew install git`

### SSH key for personal Github

#### Generate key
`ssh-keygen -t ed25519 -C "{personal_email}" -f ~/.ssh/github`

#### Add key to GitHub
* Copy public key to clipboard
* `cd ~/.ssh`
* `pbcopy < ~/.ssh/github.pub`
* Open github.com -> log in -> Settings -> SSH and GPG Keys -> New SSH key
* Name the key and paste the copied value

#### Configure ssh-agent to use keys
* Ensure SSH Agent is running
* `eval "$(ssh-agent -s)"
* Open SSH config for editing
* `vim ~/.ssh/config`/
* Add the following lines:
```bash
Host *
  AddKeysToAgent yes
```
* Add key to ssh-agent
* `ssh-add --apple-use-keychain ~/.ssh/github`

#### Add alias for personal Github
> Note: this may be unnecessary, I did this before adding keys to the keychain in OSX
Add the following to ~/.ssh/config
```bash
Host gh
  Hostname github.com
  User git
  IdentityFile ~/.ssh/github
```
* Configure personal Github projects to use personal Github SSH key
* In each personal Github project file, run:
* `git remote set-url origin gh:{user}/{repo}`

### SSH key for work Github

#### Generate key
`ssh-keygen -t ed25519 -C "{work_email}" -f ~/.ssh/github_work`

#### Add key to GitHub
* Copy public key to clipboard
* `cd ~/.ssh`
* `pbcopy < ~/.ssh/github_work.pub`
* Open github.com -> log in -> Settings -> SSH and GPG Keys -> New SSH key
* Name the key and paste the copied value

#### Add to ssh-agent
* Ensure SSH Agent is running
* `eval "$(ssh-agent -s)"
* Add key to ssh-agent
* `ssh-add --apple-use-keychain ~/.ssh/github_work`

### SSH key for work Bitbucket

#### Generate key
`ssh-keygen -C "{work_email}" -f ~/.ssh/bitbucket`

#### Add key to GitHub
* Copy public key to clipboard
* `cd ~/.ssh`
* `pbcopy < ~/.ssh/bitbucket.pub`
* Open BitBucket -> Account menu (top right) -> Personal Settings -> SSH keys -> Add key
* Name the key and paste the copied value

#### Add to ssh-agent
* Ensure SSH Agent is running
* `eval "$(ssh-agent -s)"
* Add key to ssh-agent
* `ssh-add --apple-use-keychain ~/.ssh/bitbucket`

## Install VS Code
* `brew install --cask visual-studio-code`

## Cheat

## Install Wget
* `brew install wget`o

## Install Oh My Zsh
* `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh --no-check-certificate -O -)"`

