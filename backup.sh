sudo apt install -y vim lightdm i3 i3lock lxappearance feh qutebrowser ranger gnome-disk-utility polybar zathura xfce4-terminal pavucontrol bluez mpv neofetch rofi conky brave python3 python3-pip git scrot ytfzf vlc xorg lightdm lightdm-slick-greeter guvcview lightdm-settings xrand arandr
tar -xvf powerline-shell.tar.gz ; cd powerline-shell ; python3 setup.py install
cd ..
git clone https://gitlab.com/10542hsrif/gruvbox-dark-gtk ~/.themes/gruvbox-dark-gtk
tar -xvf gruvbox_dark.tar.gz ; mv gruvbox_dark/ ~/.icons/
tar -xvf solarized.tar.gz ; mv solarized ~/.themes/
tar -xvf solarized-icons.tar.gz ; mv solarized-icons ~/.icons/
tar -xvf polybar.tar.gz ; mv polybar/ ~/.config/
tar -xvf vim.tar.gz ; cp -r vim/ .vim/ ; rm -rf vim/ ;  mv .vim/ $HOME
cp vimrc .vimrc ; rm vimrc ; mv .vimrc $HOME
tar -xvf rofi.tar.gz ; mv rofi/ ~/.config/
cp bashrc .bashrc ; rm bashrc ; mv .bashrc $HOME
mv conky/ ~/.config/
mv i3/ ~/.config/
sudo mv lightdm.conf /etc/lightdm/
sudo systemctl enable lightdm
clear
echo "Installation complete, you may start configuring the system"
