#!/bin/sh
apt-get install fonts-powerline

curl -sS https://starship.rs/install.sh | sh

mkdir -p  ~/.config

#starship preset tokyo-night > ~/.config/starship.toml
starship preset pastel-powerline > ~/.config/starship.toml

echo 'eval "$(starship init bash)"' >> ~/.bashrc

