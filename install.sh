#!/bin/sh
echo "Copying vimrc file"
cp vimrc ~/.vimrc
echo "Copying vim folder"
mkdir -p ~/.vim/bundle
echo "Installing packages dependency"
sudo pkg install vim git boost-all py36-boost-libs py36-powerline-status powerline-fonts

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall'

cd ~/.vim/bundle/YouCompleteMe/
python3.6 install.py
cd -

