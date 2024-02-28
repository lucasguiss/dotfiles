#!/bin/bash

source ~/.bashrc
asdf plugin add zoxide https://github.com/nyrst/asdf-zoxide.git
asdf install zoxide latest
asdf global zoxide latest

echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
