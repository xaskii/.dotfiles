#!/usr/bin/env bash
pushd "$DOTFILES" || return 1
if [[ -z "$STOW_FOLDERS" ]]; then
	echo "$STOW_FOLDERS not set"
	exit 1
fi

for folder in $(echo "$STOW_FOLDERS" | sed 's/,/ /g'); do
	echo "Removing $folder"
	stow -D "$folder"
done
popd || exit 1
