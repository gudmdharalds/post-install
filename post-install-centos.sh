#!/bin/bash

yum install -y vim nano acpid net-tools telnet epel-release keepass firefox pidgin hexchat thunderbird rsync xterm php yum-cron mutt git unzip zip tcpdump subversion dos2unix acpid && \
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
echo "rm='rm -i'" >> /etc/profile.d/gdh.conf && \
echo "cp='cp -i'" >> /etc/profile.d/gdh.conf && \
echo "mv='mv -i'" >> /etc/profile.d/gdh.conf && \
echo '\S -- \l' > /etc/issue && \
echo 'Kernel \r on an \m' >> /etc/issue
