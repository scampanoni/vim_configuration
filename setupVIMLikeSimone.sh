#!/bin/bash

# Copy vimrc
cp vimrc ~/.vimrc ;

# Clone Vundle
pushd ./ ;
if ! test -d ~/.vim/bundle/Vundle.vim ; then 
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim ;
else
  cd ~/.vim/bundle/Vundle.vim ;
  git pull ;
fi
popd ;

# Clone YouCompleteMe
pushd ./ ;
if ! test -d ~/.vim/bundle/YouCompleteMe ; then
  git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
else 
  cd ~/.vim/bundle/YouCompleteMe ;
  git pull ;
fi
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
popd ; 

# Install YouCompleteMe
pushd ./ ;
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
popd ;

# Install all plugins
vim +PluginInstall +qall ;
