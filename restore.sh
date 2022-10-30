#!/bin/sh

set -A home_files ".Xmodmap" ".Xresources" ".cwmrc" ".kshrc" ".profile" ".xsession"

for home_file in ${home_files[@]}
do
	echo "Restoring $home_file..."
	cp $home_file $HOME/
done

set -A config_folders "keepassxc" "ncspot" "nvim" "rofi" "tint2"

for config_folder in ${config_folders[@]}
do
	echo "Restoring $config_folder..."
	cur_folder=$HOME/.config/$config_folder
	if [[ -d $cur_folder ]]; then
		rm -rf $cur_folder
	fi

	cp -r ./$config_folder $cur_folder
done
