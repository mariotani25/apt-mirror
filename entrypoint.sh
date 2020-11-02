#!/bin/bash

# Refresh mirror every X hours
while true;
do
  apt-mirror
  /var/spool/apt-mirror/var/clean.sh
  echo "Start sleep 1d..."
  sleep 1d
done