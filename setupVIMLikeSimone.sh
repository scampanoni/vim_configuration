#!/bin/bash

# Copy vimrc
cp vimrc ~/.vimrc ;

# Clone YouCompleteMe
rm -rf ~/.vim/bundle/YouCompleteMe ;
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe

# Install YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
