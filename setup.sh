#!/bin/bash
#
set -e

echo "deb http://deb.debian.org/debian/ stable main contrib non-free" > /etc/apt/sources.list

DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get upgrade -y

DEBIAN_FRONTEND=noninteractive apt-get install -y locales wget nano make perl-modules xz-utils  #apt-mirror
ls -l
cd apt-mirror-master

DEBIAN_FRONTEND=noninteractive make install 
 
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
# # ln -s /etc/locale.alias /usr/share/locale/locale.alias

locale-gen
rm -rf /var/lib/apt/lists/*
rm -rf /usr/share/i18n/