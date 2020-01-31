#!/bin/bash

yum install -y vim nano acpid whois net-tools telnet epel-release keepass firefox pidgin hexchat thunderbird rsync xterm php yum-cron mutt git unzip zip tcpdump subversion dos2unix acpid jwhois screen && \
systemctl disable rpcbind && \
systemctl disable rpcbind.socket && \
systemctl disable cups && \
systemctl disable cups.path && \
systemctl disable cups.socket && \
systemctl disable sshd && \
systemctl set-default graphical.target && \
echo "blacklist pcspkr" >> /etc/modprobe.d/fbdev-blacklist.conf && \
echo "root: gdh" >> /etc/aliases && \
newalises && \
echo 'PATH="$PATH:/usr/sbin:/sbin"' >> /etc/profile.d/gdh.conf && \
echo "alias rm='rm -i'" >> /etc/profile.d/gdh.conf && \
echo "alias cp='cp -i'" >> /etc/profile.d/gdh.conf && \
echo "alias mv='mv -i'" >> /etc/profile.d/gdh.conf && \
echo '\S -- \l' > /etc/issue && \
echo 'Kernel \r on an \m' >> /etc/issue


# Also, for keyboard binding, run as non-privileged:
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Alt>5']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Alt>6']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Alt>7']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Alt>8']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Alt>9']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Alt>0']" 
