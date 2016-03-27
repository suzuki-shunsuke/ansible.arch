#!/bin/sh

systemctl start NetworkManager.service
echo "User Name:"
read NAME
useradd -m $NAME
passwd $NAME
gpasswd -a $NAME wheel
pacman -Syu
pacman -S sudo
visudo

# 一旦ログアウトして新しいユーザでログインし直す

sudo pacman -S git python2 python2-pip
sudo pip2 install --upgrade pip
sudo pip2 install ansible
git clone https://github.com/suzuki-shunsuke/ansible ~/.ansible
cd ~/.ansible/arch
cp sample_playbook.yml playbook.yml
vi playbook.yml
ansible-playbook playbook.yml --ask-become-pass
