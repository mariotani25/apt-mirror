#!/bin/bash

# Refresh mirror every X hours
while true;
do
  apt-mirror
  echo "Start sleep 1d..."
  sleep 1d
done