sudo apt install -y vim lightdm i3 i3lock lxappearance feh qutebrowser ranger gnome-disk-utility polybar zathura xfce4-terminal pavucontrol bluez mpv neofetch rofi conky python3 python3-pip git scrot ytfzf vlc xorg lightdm slick-greeter guvcview lightdm-settings arandr btop libreoffice chrony
tar -xvf powerline-shell.tar.gz ; cd powerline-shell ; sudo python3 setup.py install
cd $HOME/dlde/
git clone https://gitlab.com/10542hsrif/gruvbox-dark-gtk ~/.themes/gruvbox-dark-gtk
tar -xvf gruvbox_dark.tar.gz ; mv gruvbox_dark/ ~/.icons/gruvbox_dark/
tar -xvf solarized.tar.gz ; mv solarized ~/.themes/solarized/
tar -xvf solarized-icons.tar.gz ; mv solarized-icons ~/.icons/solarized-icons/
tar -xvf polybar.tar.gz ; mv polybar/ ~/.config/polybar/
tar -xvf vim.tar.gz ; cp -r vim/ .vim/ ; rm -rf vim/ ;  mv .vim/ $HOME/.vim/
tar -xvf xfce4.tar.gz ; mv xfce4 ~/.config/xfce4/
cp vimrc .vimrc ; rm vimrc ; mv .vimrc $HOME/.vimrc
tar -xvf rofi.tar.gz ; mv rofi/ ~/.config/rofi/
cp bashrc .bashrc ; rm bashrc ; mv .bashrc $HOME/.bashrc
mv conky/ ~/.config/conky/
mv i3/ ~/.config/i3/
sudo mv lightdm.conf /etc/lightdm/lightdm.conf
sudo systemctl enable lightdm
sudo killall chrony
timedatectl set-local-rtc 1 --adjust-system-clock
clear
echo "Installation complete. Opening legacy NVIDIA installer..."
sleep 5
python3 nvidia.py
