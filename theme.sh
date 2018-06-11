#!/bin/bash

# https://anki.tenderapp.com/kb/problems/anki-not-picking-up-gtk-theme-on-gnomelinux

# set -xe

# Get the theme of your desktop with:
# gsettings get org.gnome.desktop.interface gtk-theme

theme=${1:-Materia-compact}
echo "gtk-theme-name=$theme" > ~/.gtkrc-2.0
echo "export GTK2_RC_FILES=$HOME/.gtkrc-2.0" > ~/.profile
