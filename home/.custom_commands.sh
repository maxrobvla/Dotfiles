#!\bin\bash

function uni(){
    cd ~/OneDrive/\#Studium/Physik\ WiSe2024-25
}

function sim(){
    cd ~/OneDrive/\#Studium/Physik\ SoSe2024/Bachelor-Arbeit/Numerik/Simulation
}

function ba(){
    cd ~/OneDrive/\#Studium/Physik\ SoSe2024/Bachelor-Arbeit/Bachelor-Arbeit/
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

function gdsync(){
    oldwd=$PWD
    cd ~/GoogleDrive/
    grive
    cd $oldwd
}
