#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Backs up old dotfiles
#
# DIRECTIONS: Run './makelinks.sh'
############################

########## Variables

dir=~/dotfiles                              # Dotfiles directory
olddir=~/dotfiles_old                       # Old dotfiles backup directory
regex_exclude="(\.|\.\.|\.sh|\.md)$"        # Files to exclude
files=$(ls -1 | egrep -v "$regex_exclude" | egrep -v "^\.")  # List of files/folders to symlink in homedir

##########

# Little logging
echo "========== Files to Link ============="
echo $files
echo "======================================"

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
echo "Moving any existing dotfiles from ~ to $olddir"
for file in $files; do
    if [ -e ~/.$file ]; then
        echo -n "Moving old $file to $olddir..."
        mv ~/.$file $olddir
        echo "done"
    elif [ -h ~/.$file ]; then
        echo -n "Old file ($file) symlinked. Removing..."
        rm ~/.$file
        echo "done"
    fi

    echo -n "Creating symlink to $file in home directory..."
    ln -s $dir/$file ~/.$file
    echo "done"
done

if [ -d "$dir/vim/bundle" ]; then
  echo -n "Bundle dir exists, removing..."
  rm "$dir/vim/bundle" -rf
  echo "done"
fi

echo "Installing Vundle..."
git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/bundle/vundle

echo -n "Running Vundle..."
vim +BundleInstall +qall
echo "done"

