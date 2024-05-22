sudo mv sid-repositories.list /etc/apt/sources.list.d/
sudo apt update && sudo apt install nvidia-legacy-340xx-driver firmware-misc-nonfree
sudo rm /etc/apt/sources.list.d/sid-repositories.list
sudo apt update
