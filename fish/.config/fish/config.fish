if status is-interactive
    # Commands to run in interactive sessions can go here
end

# setup rust
source "$HOME/.cargo/env"

# aliases and functions
alias icat="kitty +kitten icat"
alias v="nvim"
alias skat="~/Downloads/skat -font 6x13 -lang german"
alias screenshot="maim -s -D -c 1,0,0 -b 5 | xclip -selection clipboard -t image/png"
alias s="kitten ssh"
alias z="zellij"
alias zfp="zellij plugin -- filepicker"
alias fct="ls | wc -l"
alias ll="eza -la --icons=always --no-user --no-time --no-permissions"
alias l="eza -a --icons=always"
alias hx="helix"
alias vk='NVIM_APPNAME="nvim-kickstart" nvim'
alias anv='NVIM_APPNAME="nvim-astro" nvim'
alias :q="exit"
alias config="cd ~/.config"

# uni related
alias uni="cd ~/OneDrive/#Studium/Physik SoSe2024/"
alias ba="cd ~/OneDrive/#Studium/Physik SoSe2024/Bachelor-Arbeit/"
alias av="cd ~/OneDrive/#Studium/Physik SoSe2024/Bachelor-Arbeit/Anti-Vicsek/Simulation/"

# environment variables
export EDITOR=nvim

starship init fish | source
