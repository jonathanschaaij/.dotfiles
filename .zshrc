# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster_short"

zstyle ':omz:update' mode disabled  # disable automatic updates

ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
#DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf-zsh-plugin zsh-lsd poetry)

source $ZSH/oh-my-zsh.sh

# User configuration

# Map the CAPS key to be an additional ESCAPE
setxkbmap -option "caps:escape"

source ~/Applications/goto/goto.sh
# source ~/.profile

alias nwr="sudo systemctl restart NetworkManager"
alias py="python3"
alias vpn="nordvpn status"
alias vpn-down="nordvpn d && sudo wg-quick down wg_config"
alias vpn-nl="nordvpn c Netherlands"
alias vpn-home="sudo wg-quick up wg_config"
alias f="cd \$(find -L . -not -path \"*/.*\" -not -path \"./.*\" -not -path \"*/pCloudDrive/*\" -type d | fzf )"
alias e="nvim \$(find -L . -not -path \"*/.*\" -not -path \"*/pCloudDrive/*\" -type f | fzf)"
alias p="ping 1.1.1.1"
alias o="xdg-open"
alias c="clear"
alias v="nvim"
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias TOGGLE_CAPS="xdotool key Caps_Lock"

### AUTOMATICALLY GENERATED BY NODE_VERSION_MANAGER
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jonathan/Applications/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jonathan/Applications/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jonathan/Applications/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jonathan/Applications/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

