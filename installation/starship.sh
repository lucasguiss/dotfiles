#!/bin/bash

curl -sS https://starship.rs/install.sh | sh

mkdir -p ~/.config && cp ./config/starship.toml ~/.config

echo 'eval "$(starship init bash)"' >> ~/.bashrc