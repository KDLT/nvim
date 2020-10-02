# NVIM Configs
located in `$XDG_CONFIG_HOME/nvim` and contains three files

`.vimrc` which was carried over from the plain old vim configs
`.vimrc.plug` sourced by the .vimrc above for all my plugins since I'm using vim-plug
`init.vim` which sources .vimrc using the $MYVIMRC environment variable that sources the plugins
