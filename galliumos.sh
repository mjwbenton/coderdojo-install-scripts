# This setup script:
# 1. Kills the screensaver and stops it from requiring a password every time the screen locks
# 2. Updates everything
# 3. Installs flash
# 4. Installs some text editors

# Stop xscreensaver from beginning on startup and causing the need to enter password when the laptop lid is reopened
killall xscreensaver
sudo su -
rm /etc/xdg/autostart/xscreensaver.desktop

# Add repo ready to install flash and upgrade packages
add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
yes | apt-get update
# grub-pc seems to want to install interactively, so upgrade everything else
apt-mark hold grub-pc
yes | apt-get upgrade

# Install flash and vim
yes | apt-get install adobe-flashplugin vim gedit

echo "================================"
echo "Yipee! It's Done!"
