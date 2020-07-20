#!/bin/bash

# Get APT updated, and install some 'essential' everyday tools
apt-get update											&& \
apt-get -y remove nfs-common rpcbind minissdpd							&& \
apt-get -y install xbacklight vim wmaker cron-apt mutt xscreensaver subversion git thunderbird apt-transport-https net-tools dos2unix unzip zip tcpdump screen gimp xterm	 && \
# Make sure that the system automatically gets 							\
# security updates every hour -- make sure root 						\
# gets to know about it via email								\ 
cat /etc/apt/sources.list | sed 's/ main/ main contrib non-free/g' >> /etc/apt/sources.list.new	&& \
mv -f /etc/apt/sources.list.new /etc/apt/sources.list						&& \
echo "upgrade -y -o APT::Get::Show-Upgraded=True" >> /etc/cron-apt/action.d/5-security		&& \
echo 'OPTIONS="-o quiet=1 -o Dir::Etc::SourceList=/etc/apt/sources.list.d/security.list -o Dir::Etc::SourceParts=\"/dev/null\""' > /etc/cron-apt/config.d/5-security && \
cat /etc/apt/sources.list | grep security >> /etc/apt/sources.list.d/security.list		&& \
cat /etc/apt/sources.list | grep -v security > /etc/apt/sources.list.new			&& \
mv -f /etc/apt/sources.list.new /etc/apt/sources.list						&& \
grep -v "cron-apt" /etc/cron.d/cron-apt   > /etc/cron.d/cron-apt-new				&& \
mv -f /etc/cron.d/cron-apt-new /etc/cron.d/cron-apt						&& \
echo '0 * * * * root   test -x /usr/sbin/cron-apt && /usr/sbin/cron-apt' >> /etc/cron.d/cron-apt && \
echo '
MAILON="output"
DEBUG="verbose"
' > /etc/cron-apt/config									&& \
# Get some aliases set up 									\
echo "
alias cp='cp -i' 
alias mv='mv -i'
alias rm='rm -i'
" >> /etc/profile										&& \
echo "blacklist pcspkr" >> /etc/modprobe.d/fbdev-blacklist.conf					&& \
echo 'PATH="$PATH:/usr/sbin:/sbin:/usr/local/sbin"' >> /etc/profile				

