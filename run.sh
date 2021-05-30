alacritty=$HOME/.config/alacritty
bashrc=$HOME/.bashrc
vimrc=$HOME/.vimrc
tmux=$HOME/.tmux.conf

# Install apps while read a file
sudo pacman -S $(< manjaro_after_install/install)

# Link config files

# Alacritty
if test ! -d "$alacritty"; then
    ln -s $(pwd)/alacritty $alacritty
    echo Alacritty config file linked to $alacritty
fi

# bashrc
if test ! -f "$bashrc"; then
    ln -s $(pwd)/bashrc $bashrc
    echo bashrc config file linked to $bashrc
fi

# vimrc
if test ! -f "$vimrc"; then
    ln -s $(pwd)/vimrc $vimrc
    echo tmux config linked to $vimrc
fi

# tmux
if test ! -f "$tmux"; then
    ln -s $(pwd)/tmux.conf $tmux
    echo tmux config linked to $tmux
fi

