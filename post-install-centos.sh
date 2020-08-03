#!/bin/bash

yum install -y vim vim-enhanced nano acpid whois net-tools telnet epel-release keepass firefox pidgin hexchat thunderbird rsync xterm php yum-cron mutt git unzip zip tcpdump subversion dos2unix acpid jwhois screen dia bc dos2unix jwhois mutt nmap && \
systemctl disable rpcbind && \
systemctl disable rpcbind.socket && \
systemctl disable cups && \
systemctl disable cups.path && \
systemctl disable cups.socket && \
systemctl disable sshd && \
systemctl set-default graphical.target && \
echo "blacklist pcspkr" >> /etc/modprobe.d/fbdev-blacklist.conf && \
echo "root: gdh" >> /etc/aliases && \
newaliases && \
echo '#!/bin/bash' >> /usr/local/bin/batt.sh && \
echo 'upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep percent' >> /usr/local/bin/batt.sh && \
echo 'upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state' >> /usr/local/bin/batt.sh && \
echo 'upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep time' >> /usr/local/bin/batt.sh && \
chmod 755 /usr/local/bin/batt.sh && \
echo 'PATH="$PATH:/usr/sbin:/sbin"' >> /etc/profile.d/gdh.conf && \
echo "alias acpi='/usr/local/bin/batt.sh'" >> /etc/profile.d/gdh.conf && \
echo "alias rm='rm -i'" >> /etc/profile.d/gdh.conf && \
echo "alias cp='cp -i'" >> /etc/profile.d/gdh.conf && \
echo "alias mv='mv -i'" >> /etc/profile.d/gdh.conf && \
echo '\S -- \l' > /etc/issue && \
echo 'Kernel \r on an \m' >> /etc/issue && \
echo '0  *  *  *  * root systemctl disable rpcbind.socket' >> /etc/crontab && \
echo '0  *  *  *  * root service rpcbind.socket stop 2>/dev/null' >> /etc/crontab

echo 'rfkill block bluetooth' >> /etc/rc.local && \
chmod a+rx /etc/rc.local

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
