# Dependencies needed to install schemes

echo -e "\nInstalling Gnome Solarized Theme...\n"

sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install -y dconf-cli gtk2-engines-murrine \
                        paper-icon-theme numix-gtk-theme

curl 'https://i.imgur.com/BaocXcW.png' > ~/wallpaper_solarized.png
gsettings set org.gnome.desktop.interface gtk-theme "Numix"
gsettings set org.gnome.desktop.wm.preferences theme "Numix"
gsettings set org.gnome.desktop.interface icon-theme 'Paper'
gsettings set org.gnome.desktop.background picture-uri "file:///$HOME/wallpaper_solarized.png"

echo -e "\nFinished gnome theme installation.\n"

echo -e "\nStarting terminal theme installation...\n"

echo -e "\nThis might take a while...\n"

git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git

chmod 750 gnome-terminal-colors-solarized/install.sh
chmod 750 gnome-terminal-colors-solarized/set_dark.sh

./gnome-terminal-colors-solarized/install.sh
./gnome-terminal-colors-solarized/set_dark.sh

echo -e "\nFinished solarized installation...\n"

echo -e "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo -e "!!                    Next steps                          !!"
echo -e "!! Install Vim for better productivity and then install   !!"
echo -e "!!         the solarized theme for Vim!                   !!"
echo -e "!!             Appreciate any feedback!                   !!"
echo -e "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
