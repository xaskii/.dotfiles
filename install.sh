#!/usr/bin/env bash
# set in $HOME/.config/personal/env
if [[ -z $STOW_FOLDERS ]]; then
	STOW_FOLDERS="omg,personal,tmux,zsh,nvim,kitty"
fi

if [[ -z $DOTFILES ]]; then
	DOTFILES=$HOME/.dotfiles
fi

pushd "$DOTFILES" || exit 1
for folder in $(echo "$STOW_FOLDERS" | sed 's/,/ /g'); do
	echo "stowing $folder"
	stow -R "$folder"
done
popd || exit 1
