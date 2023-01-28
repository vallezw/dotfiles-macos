eval "$(/opt/homebrew/bin/brew shellenv)"
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi
export HOMEBREW_BREWFILE=~/.config/brew/Brewfile
