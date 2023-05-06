#!/bin/bash
sudo apt update
sudo apt -y install curl build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-17-jdk wx-common

sudo apt install -y nodejs npm inotify-tools
sudo npm install n -g
sudo n stable
sudo apt purge -y nodejs npm

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3
echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc

#source ~/.bashrc
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

asdf install erlang 24.0
asdf install elixir 1.12.2
asdf global erlang 24.0
asdf global elixir 1.12.2