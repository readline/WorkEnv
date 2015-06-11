#!/bin/bash
echo Init WorkEnv
rm -rf ~/.WorkEnv
mv `pwd` ~/.WorkEnv
cd ~/.WorkEnv
echo Init vim...
git submodule update --init --recursive
rm -rf ~/.vim ~/.vimrc
ln -s ~/.WorkEnv/vim ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc

echo Init zsh...
cd ~
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
cd ~/.WorkEnv/zsh
echo 'export PATH='`echo $PATH`':$PATH' >> zshrc
rm ~/.zshrc 
ln -s ~/.WorkEnv/zsh/zshrc ~/.zshrc

echo Init tmux...
rm ~/.tmux.conf ~/.tmux.conf.local
ln -s ~/.WorkEnv/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.WorkEnv/tmux/tmux.conf.local ~/.tmux.conf.local

echo If you want to setup YouCompleteMe, use the cmd followed:
cd ~/.WorkEnv/vim/bundle && sh installYouCompleteMe.sh


