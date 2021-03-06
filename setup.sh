#!/bin/bash

THIS_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if ! [[ -e $HOME/.spacemacs ]]; then
	echo "Link .spacemacs"
	ln -s $THIS_DIR/spacemacs $HOME/.spacemacs
fi

if ! [[ -L $HOME/.emacs.d/private ]] && [[ -d $HOME/.emacs.d/private ]]; then
  echo "Remove current private dir"
	rm -r $HOME/.emacs.d/private
fi

if ! [[ -L $HOME/.emacs.d/private ]] ; then
  echo "Link private dir to the this one"
	ln -s $THIS_DIR $HOME/.emacs.d/private
fi
