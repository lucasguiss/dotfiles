#!/bin/bash

function ask() {
    read -p "$1 (Y/n): " resp
    if [ -z "$resp" ]; then
        response_lc="y"
    else
        response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]')
    fi

    [ "$response_lc" = "y" ]
}

if ask "Install essentials?"; then
    sh ./scripts/essentials.sh
fi

if ask "Source ssh-agent?"; then
    sh ./scripts/essentials.sh
fi

for file in installation/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if ask "Install ${filename}?"; then
            sh "$(realpath "$file")"
        fi
    fi
done
