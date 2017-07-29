# Stop xscreensaver from beginning on startup and causing the need to enter password when the laptop lid is reopened
sudo rm /etc/xdg/autostart/xscreensaver.desktop
# Install flash
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install adobe-flashplugin
echo "Yipee! It's Done!"
