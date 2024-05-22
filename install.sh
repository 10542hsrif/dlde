sudo apt install -y vim lightdm i3 i3lock lxappearance feh qutebrowser ranger gnome-disk-utility polybar zathura xfce4-terminal pavucontrol bluez mpv neofetch rofi conky python3 python3-pip git scrot ytfzf vlc xorg lightdm slick-greeter guvcview lightdm-settings arandr btop libreoffice chrony fonts-fantasque-sans fonts-droid-fallback xfonts-terminus fonts-material-design-icons-iconfont curl unzip wget
sudo apt --fix-broken install
wget https://sid.ethz.ch/debian/fonts-iosevka/fonts-iosevka_22.0.0%2Bds-1_all.deb
tar -xvf powerline-shell.tar.gz ; cd powerline-shell ; sudo python3 setup.py install
cd $HOME/dlde/
sudo dpkg -i --force-depends *.deb
sh install.sh
git clone https://github.com/stark/siji
cd siji/
sh install.sh
cd $HOME/dlde/
mkdir .themes/
git clone https://gitlab.com/10542hsrif/gruvbox-dark-gtk ~/.themes/gruvbox-dark-gtk
mkdir .icons/
tar -xvf gruvbox_dark.tar.gz ; mv gruvbox_dark/ ~/.icons/gruvbox_dark/
tar -xvf solarized.tar.gz ; mv solarized ~/.themes/solarized/
tar -xvf solarized-icons.tar.gz ; mv solarized-icons ~/.icons/solarized-icons/
git clone https://github.com/adi1090x/polybar-themes
cd polybar-themes
sh setup.sh
cd $HOME/dlde/
tar -xvf vim.tar.gz ; cp -r vim/ .vim/ ; rm -rf vim/ ;  mv .vim/ $HOME/.vim/
tar -xvf xfce4.tar.gz ; mv xfce4 ~/.config/xfce4/
cp vimrc .vimrc ; rm vimrc ; mv .vimrc $HOME/.vimrc
tar -xvf rofi.tar.gz ; mv rofi/ ~/.config/rofi/
cp bashrc .bashrc ; rm bashrc ; mv .bashrc $HOME/.bashrc
mv conky/ ~/.config/conky/
mv i3/ ~/.config/
mv wallpapers/ $HOME
sudo mv lightdm.conf /etc/lightdm/lightdm.conf
sudo systemctl enable lightdm
sudo killall chrony
sudo timedatectl set-local-rtc 1 --adjust-system-clock
clear
echo "Installation complete. Opening legacy NVIDIA installer..."
sleep 5
python3 nvidia.py
