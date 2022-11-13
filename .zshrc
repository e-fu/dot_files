# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/efu/.oh-my-zsh"
export TERM="xterm-256color"


# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# UPDATE: git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull
# If you are using iTerm2 or Termux, p10k configure can install the recommended font for you. Simply answer Yes when asked whether to install Meslo Nerd Font.

#POWERLEVEL9K_MODE='awesome-fontconfig'	
ZSH_THEME="powerlevel10k/powerlevel10k"	
#### OLD ####
# WERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)	
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)	
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true	
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=true	
# Output time, date, and a symbol from nerd (awesome) font	:q
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uF0CE  %d.%m.%y}"	
# ENABLE_CORRECTION="true"	
# COMPLETION_WAITING_DOTS="true"
############


# Add wisely, as too many plugins slow down shell startup.
# brew install zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions

plugins=(vi-mode git mix npm brew macos history-substring-search zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting asdf)
# zsh-autocomplete)

ZSH_DISABLE_COMPFIX=true

# Aliase
alias locate="mdfind"
alias updatedb="sudo mdutil -pEsav"
alias vim="nvim"
alias vimdiff="nvim -d"

# Usage: compresspdf [input file] [output file] [screen*|ebook|printer|prepress]
compresspdf() {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"ebook"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# OPAM configuration
# . /Users/efu/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

### EOF ###
# zsh syntax highlighting
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# trust homebrew
ZSH_DISABLE_COMPFIX="true"

#source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Erlang / Elixir History
export ERL_AFLAGS="-kernel shell_history enabled"

# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md	# ENABLE_CORRECTION="true"
# NPM_PACKAGES="${HOME}/.npm-packages"	
# PATH="$NPM_PACKAGES/bin:$PATH"

# Cheat for command line (brew install cheat)
export CHEATCOLORS=true

# install elixir and phoenix
# https://gist.github.com/likethesky/abb00e5aedc38ee9f711

# install python
# brew install pyenv
# pyenv install -l 
# pyenv install 3.8.5
# eval "$(pyenv init -)"

# no analytics homebrew	
export HOMEBREW_NO_ANALYTICS=1


eval "$(rbenv init - zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
