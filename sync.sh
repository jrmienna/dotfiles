#!/bin/bash

files="zshrc vimrc gitconfig theanorc"
folders="atom iterm"

# Sync all files
if [ -n "$files" ]; then
    for file in $files; do
        echo "rsync -rtvpl ~/.$file ./.$file"
        rsync -rtvpl ~/.$file ./.$file
    done
fi

# Sync all folders
if [ -z "$folders" ]; then
    for folder in $folders; do
        echo "rsync -rtvpl ~/.$folder ./.$folder"
        rsync -rtvpl ~/.$folder ./.$folder
    done
fi

git add --all
git commit -m "sync `date +%Y-%m-%dT%H:%M`"
