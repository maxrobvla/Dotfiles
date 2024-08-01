# import plugin manager (antigen) and load plugins
source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found

# load other plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# remove weird keybindings (find all keybindings from shell with "bindkey")
bindkey -r "^[n"
bindkey -r "^[p"
bindkey '^H' backward-kill-word

source ~/.custom_commands.sh
. "$HOME/.cargo/env"

eval "$(batpipe)"
eval "$(zoxide init zsh)"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

alias icat="kitty +kitten icat"
alias v="nvim"
alias vf="nvim \$(fzf --preview='cat {}')"
alias screenshot="maim -s -D -c 1,0,0 -b 5 | xclip -selection clipboard -t image/png"
alias s="kitten ssh"
alias brain="ssh s-mbschu@brain.uni-greifswald.de"
alias zj="zellij"
alias fct="ls | wc -l"
alias ll="eza -la --icons=always --no-user --no-time --no-permissions"
alias l="eza -a --icons=always"
alias hx="helix"
alias nvc='NVIM_APPNAME="nvim-nvchad" nvim'
alias anv='NVIM_APPNAME="nvim-astro" nvim'
alias spacemacs='emacs --init-directory="~/.config/spacemacs/.emacs.d"'
alias doomemacs='emacs --init-directory="~/.config/doomemacs/"'
alias blahaj="display3d ~/Dotfiles/other/blahaj/blahaj.obj --fov 80 --fps 15"
alias man='batman'
alias vpnon="nmcli c up vpn-profile-uni-greifswald"
alias vpnoff="nmcli c down vpn-profile-uni-greifswald"
alias fishies="asciiquarium"

export PAGER=bat

export EDITOR=nvim

# echo "\e[1;33m󰄛 \e[0m"

# source /home/maxrob/.config/zellij/zsh.sh
