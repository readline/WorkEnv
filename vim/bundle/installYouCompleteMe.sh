#!/bin/bash
cd ~/.WorkEnv
git submodule add git@github.com:Valloric/YouCompleteMe.git vim/bundle/YouCompleteMe
git submodule update --init --recursive
cd vim/bundle/YouCompleteMe
./install.sh

