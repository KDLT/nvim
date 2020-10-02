#!/bin/bash

# for posterity, i'm including this very rudimentary rsync script
fromDir="$XDG_CONFIG_HOME/nvim/"
toDir="$HOME/git/nvim/"
scriptDir="$HOME/.local/bin/nvimconfigcopy.sh"

cp_nvim_configs () {
    rsync -av "$fromDir" "$toDir"
    rsync -av "$scriptDir" "$toDir"
}

cp_nvim_configs
