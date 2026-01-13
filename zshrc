# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm
export CXX="/usr/bin/clang++"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="lambda"

zstyle ':omz:update' mode auto

# Uncomment the following line if pasting URLs and other text is messed up.
#DISABLE_MAGIC_FUNCTIONS="true"

#ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git ufw docker tailscale)

alias hist="history | grep --color=always -E"

alias upgrade="yay -Syu && flatpak update -y"
alias vim="nvim"

alias uni="cd ~/dario_razno/Uni"
alias poul="cd ~/dario_razno/POuL"
alias cck="cargo check"
alias ccl="cargo clippy"

 
alias gpa="git pull --all"

alias edit="nvim ~/.zshrc; source ~/.zshrc"
alias kittyed="nvim ~/.config/kitty/kitty.conf"

alias sstatus="systemctl status"
alias senable="sudo systemctl enable"
alias sdisable="sudo systemctl disable"
alias sstart="sudo systemctl start"
alias sstop="sudo systemctl stop"

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH