#!\bin\bash

function uni(){
    cd ~/OneDrive/\#Studium/Physik\ SoSe2024
}

function ba(){
    cd ~/OneDrive/\#Studium/Physik\ SoSe2024/Bachelor-Arbeit
}

function av(){
    cd ~/OneDrive/\#Studium/Physik\ SoSe2024/Bachelor-Arbeit/Anti-Vicsek/Simulation
}

function theo(){
    cd ~/OneDrive/\#Studium/Physik\ SoSe2024/Quantenkinetik
}

function fana(){
    cd ~/OneDrive/\#Studium/Physik\ SoSe2024/Funktionalanalysis
}

function nvconf(){
    cd ~/.config/nvim
}

function config(){
    cd ~/.config
}

function :q() {
    exit
}

function confbackup(){
    oldwd=$PWD
    cd ~/OneDrive/Dotfiles/
    cp -r ~/.zshrc $PWD
    cp -r ~/.custom_commands.sh $PWD
    cp -r ~/.config/nvim/lua/custom/* $PWD/nvim/
    cp -r ~/.config/i3/* $PWD/i3/
    cp -r ~/.config/polybar/* $PWD/polybar/
    cp -r ~/.config/alacritty/* $PWD/alacritty/
    cp -r ~/.config/kitty/* $PWD/kitty/
    cp -r ~/.config/rofi/* $PWD/rofi/
    cp -r ~/.config/dunst/* $PWD/dunst/
    cp -r ~/.config/picom/* $PWD/picom/
    cd $oldwd
}

function gdsync(){
    oldwd=$PWD
    cd ~/GoogleDrive/
    grive
    cd $oldwd
}
