#!/bin/sh

set -A config_folders_to_backup "keepassxc" "ncspot" "nvim" "rofi" "tint2"

for config_folder in ${config_folders_to_backup[@]}
do
  echo "Backing up $config_folder..."
	if [[ -d ./$config_folder ]]; then
		rm -rf ./$config_folder
	fi
	cp -r $HOME/.config/$config_folder .
done

rm ./ncspot/userstate.cbor

set -A home_files_to_backup ".cwmrc" ".kshrc" ".profile" ".Xmodmap" ".Xresources" ".xsession"

for home_file in ${home_files_to_backup[@]}
do
  echo "Backing up $home_file..."
	cp -r $HOME/$home_file .
done

echo "Backing up manually installed packages..."
pkg_info -m > ./packages.txt

echo "Backup completed."
