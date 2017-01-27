# Path to your oh-my-zsh installation.
export ZSH=/Users/efries/.oh-my-zsh
export TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"
WERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# Output time, date, and a symbol from the "Awesome Powerline Font" set
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uE868  %d.%m.%y}"
export DEFAULT_USER="efries"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vim-mode git mix docker gem lol npm pip web-search brew osx zsh-autosuggestions)

# User configuration
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

# more user configuraton in ~/.zprofile

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
