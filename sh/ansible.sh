# ansibleのインストール

sudo pacman -S git python2 python2-pip
sudo pip2 install --upgrade pip
sudo pip2 install ansible

if [ ! -d ~/.ghq/github.com/suzuki-shunsuke ]
then
    mkdir ~/.ghq/github.com/suzuki-shunsuke
fi

if [ ! -d ~/.ghq/github.com/suzuki-shunsuke/ansible.arch ]
then
    git clone https://github.com/suzuki-shunsuke/ansible.arch ~/.ghq/github.com/suzuki-shunsuke/ansible.arch
fi
