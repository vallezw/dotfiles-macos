# Dotfiles macOS
These are my dotfiles for my macOS system using git bare repo
## Getting started
### Requirements
- [Homebrew](https://brew.sh/)
- [Homebrew-file](https://homebrew-file.readthedocs.io/en/latest/installation.html)
- [Oh My Zsh!](https://github.com/ohmyzsh/ohmyzsh)
### Installation
The installation differs a bit from just normally cloning the repo and using it as the files belong in vastly different locations and not in a single folder, that is the reason I use a [git bare repository](https://www.atlassian.com/git/tutorials/dotfiles) for my dotfiles.

The installation is as follows:
```shell
# this is only needed temporarily, the ZSH config includes this line as well, no need to manually add this somewhere.
alias dots="/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME"
git clone --bare --recurse-submodules https://github.com/vallezw/dotfiles-macos $HOME/.cfg
# this avoids having git status polluted with random files
dots config --local status.showUntrackedFiles no
```
- Now you can import the palenight and github light theme into iterm2

## Color themes
**Light Mode:** GitHub Light Theme

**Dark Mode:** Palenight Theme
