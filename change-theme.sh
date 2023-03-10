#!/bin/bash

# Script hecho por mi para cambiar el tema de gnome
# porque actualmente no cambia de forma automática las 
# app con gtk 4

PARAMETER=$1

if [ $# == 0 ]; then
    echo "se necesita argumento dark o ligth"
    exit
fi

if [ $PARAMETER == "dark" ]; then
    #Change the applications theme
    gsettings set org.gnome.desktop.interface gtk-theme Orchis-Dark-Compact
    #Change the gnome shell theme
    gsettings set org.gnome.shell.extensions.user-theme name Orchis-Dark-Compact
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

    cd ~/.config/gtk-4.0
    ln -sf ~/.themes/Orchis-Dark-Compact/gtk-4.0/* .
    echo "Hecho, cambiado a orchis dark"
fi
if [ $PARAMETER == "light" ]; then
    #Change the applications theme
    gsettings set org.gnome.desktop.interface gtk-theme Orchis-Light-Compact
    #Change the gnome shell theme
    gsettings set org.gnome.shell.extensions.user-theme name Orchis-Light-Compact
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'

    cd ~/.config/gtk-4.0
    ln -sf ~/.themes/Orchis-Light-Compact/gtk-4.0/* .
    echo "Hecho, cambiado a orchis light"
fi