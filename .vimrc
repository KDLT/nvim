" THIS IS A TEST FOR RSYNC's AUTO OVERWRITE
" Call the .vimrc.plug file
" if filereadable(expand("~/.vimrc.plug"))
if filereadable(expand("$HOME/.config/nvim/init.vim"))
	source $XDG_CONFIG_HOME/nvim/.vimrc.plug
endif

let mapleader=','

" set colorscheme (depends on flazz/vim-colorschemes)
set t_Co=256
"set termguicolors
colorscheme hybrid
set background=dark

nnoremap <leader><space> :noh<CR> " mapping for removing search highlights
nnoremap <leader>rv :source $MYVIMRC<CR> " refreshing vimrc, no need to exit
nnoremap <leader>ex :! chmod u+x %<CR> " make current file exectuable

" goyo settings
nnoremap <leader>gy :Goyo<CR> " map to goyo
let g:goyo_width='60%'
let g:goyo_height='90%'
let g:goyo_linenr=0

" markdown-preview.nvim
let g:mkdp_auto_start=1
let g:mkdp_browser='brave'
let g:mkdp_open_to_the_world=1
let g:mkdp_port='8080' " di ko alam kung pweds tong 8080
" <Plug>MarkdownPreview
" <Plug>MarkdownPreviewToggle
" nmap <C-s> <Plug>MarkdownPreview
" nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-s> <Plug>MarkdownPreviewToggle " supposedly <C-p> pero may conflict sa ctrl-p plugin

" indent guides plugin settings
nnoremap <leader>ig :IndentGuidesToggle<CR>
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd ctermbg=235
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_guide_size=1
let g:indent_guides_tab_guides=0

set scrolloff=999 " imitate typewriter mode in ulysses where text is always centered

scriptencoding utf-8 " alamin ito
set encoding=utf-8 " alamin din ito

" show active line number, all others relative
set number relativenumber
"set matchpairs+=<:>

" set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

set hlsearch " Highlight matching search patterns
set incsearch " Enable incremental search
set ignorecase " Include matching uppercase words with lowercase search
set smartcase " Override ignore case if search only contains uppercase characters, works well with TitleCase

set list " shows characters for tabs and spaces
set listchars=tab:›\ ,trail:∙,extends:#,nbsp:. " characters shown for tabs, trailing spaces, ????extend

set formatoptions=tcqrn1 " see fo-table in help
set tabstop=4 " number of spaces a <Tab> counts for, default 8
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " determines amount of whitespace to insert/remove
set expandtab " converts tabs into spaces
set noshiftround " does NOT indent to multiple of shiftwidth
