# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
# trust homebrew
ZSH_DISABLE_COMPFIX="true"
# brew install zsh zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Install Fonts:
# brew tap caskroom/fonts     
# brew cask search /nerd/ 
# brew cask install font-meslo-nerd-font 
# For spacemacs
# brew cask install font-source-code-pro-for-powerline --fontdir=/Library/Fonts
# brew cask install font-meslo-for-powerline --fontdir=/Library/Fonts
# and change font in iterm2
# git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
WERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# Output time, date, and a symbol from nerd (awesome) font
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uF0CE  %d.%m.%y}"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
# git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
plugins=(vi-mode git mix npm brew osx history-substring-search zsh-syntax-highlighting)
ZSH_DISABLE_COMPFIX=true
# Aliase
alias locate="mdfind"
alias updatedb="sudo mdutil -pEsav"
alias vim="nvim"
alias vimdiff="nvim -d"

# User configuration
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export ERL_AFLAGS="-kernel shell_history enabled"

# homebrew python2
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# more in: ~/.zprofile (not in git because there is private stuff)

# NPM - Do not "sudo" !!
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# no analytics homebrew
export HOMEBREW_NO_ANALYTICS=1

# Cheat for command line (brew install cheat)
export CHEATCOLORS=true

# install elixir and phoenix
# https://gist.github.com/likethesky/abb00e5aedc38ee9f711

# OPAM configuration
# . /Users/efu/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

### EOF ###
# zsh syntax highlighting
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# trust homebrew
ZSH_DISABLE_COMPFIX="true"

