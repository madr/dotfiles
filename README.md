Dotfiles for

- zsh/bash shell aliases
- i3-gaps
- polybar
- rofi
- picom
- git
- vim

## Installation

Go to the cloned dotfiles folder.

    cd dotfiles

Remove original files and create sym links.

    rm -f -- ~/.vimrc && ln -s $(pwd)/vimrc ~/.vimrc
    rm -f -- ~/.gitconfig && ln -s $(pwd)/gitconfig ~/.gitconfig
    rm -f -- ~/.config/i3/config && ln -s $(pwd)/i3config ~/.config/i3/config
    rm -f -- ~/.config/picom/picom.conf && ln -s $(pwd)/picom.conf ~/.config/picom/picom.conf
    rm -f -- ~/.config/rofi/config.rasi && ln -s $(pwd)/roficonfig.rasi ~/.config/rofi/config.rasi
    rm -r -f -- ~/.config/polybar && ln -s $(pwd)/polybar ~/.config/polybar

Also, install all bash aliases to bashrc or zshrc.

    echo ". $(pwd)/shellrc" >> ~/.bashrc
