#!/usr/bash

if mountpoint -q /run/media/vi/USB
then
  echo 'mounted. backing up'
  rsync -av --progress ~/dev      /run/media/vi/USB/Backups --exclude node_modules
  rsync -av --progress ~/dotfiles /run/media/vi/USB/Backups
  rsync -av --progress ~/ArchLinuxSetup /run/media/vi/USB
  rsync -av --progress ~/wallpaper /run/media/vi/USB/Backups
else
  echo 'not mounted'
fi



