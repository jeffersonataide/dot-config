#!/bin/bash

#update Fedora
sudo dnf upgrade -y

#add RPMFusion repository
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf groupupdate core

sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf groupupdate sound-and-video

sudo dnf install rpmfusion-free-release-tainted

sudo dnf install libdvdcss

sudo dnf install rpmfusion-nonfree-release-tainted

sudo dnf install \*-firmware

# Install basic software 
sudo dnf install \
tmux tlp zsh gparted htop util-linux-user \
vim neovim \
libreoffice libreoffice-langpack-pt-BR \
calibre vlc mpv hexchat Zim \
qbittorrent \
darktable inkscape  gimp krita obs-studio \
keepassxc gnucash the_silver_searcher ripgrep \
zsh-syntax-highlighting zsh-autosuggestions \
google-chrome-stable chromium

# Install optional software
sudo dnf install \
testdisk ImageMagick sqlitebrowser \
stow alacritty
# powerline-fonts tmux-powerline grsync \

# configure flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Install dev software
sudo dnf install \
sqlite-devel postgresql-devel mysql-devel \
gitg kitty pipenv
# nodejs
# pipenv

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Pyenv
sudo dnf install make gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel xz-devel

curl https://pyenv.run | bash

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


# Install Nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# Install Lunarvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
