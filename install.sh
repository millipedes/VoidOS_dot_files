packages=$(cat packages.txt | tr '\n' ' ')
xbps-install -S $packages

cp -r ./config/* ~/.config/
cp ./home_dot_files/bashrc ~/.bashrc
cp ./home_dot_files/xinitrc ~/.xinitrc
cp ./Pictures/tanya-grypachevskaya_lava.jpg
