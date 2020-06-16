#!/bin/bash -e

# Copy vimrc
cp vimrc ~/.vimrc ;

# Clone Vundle
rm -rf ~/.vim/bundle/Vundle.vim ;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim ;

# Clone YouCompleteMe
pushd ./ ;
rm -rf ~/.vim/bundle/YouCompleteMe ;
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
popd ; 

# Install YouCompleteMe
pushd ./ ;
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
popd ;
