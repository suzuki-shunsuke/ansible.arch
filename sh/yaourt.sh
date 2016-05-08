# yaourtのインストール

mkdir ~/aur
cd ~/aur

wget https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
tar xvzf package-query.tar.gz
cd package-query
makepkg -sri

cd ..

wget https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
tar xvzf yaourt.tar.gz
cd yaourt
makepkg -sri
