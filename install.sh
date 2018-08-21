#!/bin/sh
echo "Copying vimrc file"
cp vimrc ~/.vimrc
echo "Copying vim folder"
cp -R vim ~/.vim
echo "Installing packages dependency"
sudo pkg install vim git boost-all py27-boost-libs py36-powerline-status powerline-fonts

