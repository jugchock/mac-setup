# Mac Setup

## Install Programmer's Dvorak

## Homebrew

## Node

## Git

### Install Git
`brew install git`

### Generate ssh key

#### Generate personal key
`ssh-keygen -t ed25519 -C "{personal_email}" -f ~/.ssh/github`

#### Generate Work key
`ssh-keygen -t ed25519 -C "{work_email}" -f ~/.ssh/github_work`

### Add ssh keys to GitHub
* Copy public key to clipboard
* `cd ~/.ssh`
* `pbcopy < ~/.ssh/github`
* Open github.com -> log in -> Settings -> SSH and GPG Keys -> New SSH key
* Name the key and paste the copied value

### Configure ssh-agent to use keys
See https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent.

### Add alias for personal Github
Add the following to ~/.ssh/config

```text
Host gh
  Hostname github.com
  User git
  IdentityFile ~/.ssh/github
```

### Configure personal Github projects to use personal Github SSH key
In each personal Github project file, run:

`git remote set-url origin gh:{user}/{repo}`

## Cheat

