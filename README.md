# nvim Configs
located in `$XDG_CONFIG_HOME/nvim` and contains three files

1. `.vimrc` which was carried over from the plain old vim configs
2. `.vimrc.plug` sourced by the .vimrc above for all my plugins since I'm using vim-plug
3. `init.vim` which sources .vimrc using the $MYVIMRC environment variable that sources the plugins

## Note
to use the updater shell script, the following environment variables must be defined:

1. `$XDG_CONFIG_HOME` -> `$HOME/.config`
2. `$PLUGIN_DIRECTORY` -> `$XDG_CONFIG_HOME/.vim/plugged`
3. `$MYVIMRC` -> `$XDG_CONFIG_HOME/nvim/.vimrc`
