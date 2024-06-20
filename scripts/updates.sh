#!/bin/bash

echo '============================================================================'
echo 'Running Updates'
echo '============================================================================'



if [ "$select_os" = "manjaro" ]; then
    ColorBlue 'Updating Manjaro\n'
    sudo pacman -Syyu
    ColorGreen 'Manjaro Updates Completed\n'
fi

if [ "$select_os" = "endevouros" ]; then
    ColorBlue 'Updating EndevourOS\n'
    eos-update --aur --noconfirm --needed
    ColorGreen 'EndevourOS Updates Completed\n'
fi

if [ "$select_os" = "cachyos" ]; then
    ColorBlue 'Updating CachyOS\n'
    sudo pacman -Syyu
    ColorGreen 'CachyOS Updates Completed\n'
fi

ColorBlue 'Updating Packages\n'
yay --noconfirm --needed
ColorGreen 'Package Updates Completed\n'