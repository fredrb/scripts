#!/bin/bash

# Create log file
DATE=$(date +%Y%m%d%H%M%S)
touch ~/logs/$DATE.log

sudo pacman -Syu --noconfirm --logfile=~/logs/$DATE.log

exit
