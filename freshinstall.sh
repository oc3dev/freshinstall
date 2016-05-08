#!/bin/bash
# Script written by oc3dev
# You may modify this script

checker() {
E_NOTROOT=87
ROOT_UID=0
if [ $UID -ne $ROOT_UID ]; then
clear && echo "Please run this script with sudo" && sleep 2 && clear ; else
addrepos
fi

}
#---------------------------Now we will add the repos-----------------------------#

addrepos() {
apt-get install apt-transport-https software-properties-common -y
add-apt-repository ppa:webupd8team/atom # This is the ATOM text editor
add-apt-repository ppa:obsproject/obs-studio # This is Open Broadcasting Studio
add-apt-repository ppa:darklin20/bomi
apt-get update
clear && sleep 3 && echo "Added PPA. Software list has been updated." && sleep 3
main
}
#---------------------------Now we will install software--------------------------#
#---This is for Debian Systems only, I will make scripts for different package managers---#
main() {

apt-get --no-install-recommends --no-install-suggests install \
gufw wicd-curses pulseaudio pavucontrol file-roller p7zip-rar arj rar unrar-free \
lhasa unar p7zip zip udisks2 xcompmgr lib-gl1-mesa-dr1 autotools-dev \
desktop-file-utils g++ x11-utils autoconf spellutils tweak gcc libgtk2.0-dev \
intltool make libudev-dev pkg-config fakeroot iftop htop tree hardinfo \
terminator stjerm i3lock gdebi gparted ttf-mscorefonts-installer sox \
libsox-fmt-all onboard aptitude mc nitrogen onboard openjdk-7-jre -y

############ Gaming stuff ############
apt-get --no-install-recommends --no-install-suggests install steam-launcher \
playonlinux dosbox freedoom teeworlds minetest -y

############ Multimedia-- media player -- images etc ############
apt-get --no-install-recommends --no-install-suggests install openshot \
mplayer gimp gimp-gap obs-studio xfce4-screenshooter x264 mirage -y

############ Internet ############
apt-get --no-install-recommends --no-install-suggests install chromium-browser \
firefox xchat filezilla claws-mail

clear && sleep 3 && echo "Software has been installed, we will now upgrade your system." && sleep 3

finish

finish() {

apt-get upgrade -y
apt-get dist-upgrade -y

clear && sleep 3 && echo "That's it folks. The script will now exit." && sleep 3

exit
