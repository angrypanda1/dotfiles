"""""""""""""""""""""""""""""""""""""""""""""""""
"             GENERAL CONFIGURATION             "
"""""""""""""""""""""""""""""""""""""""""""""""""

" Set encoding
set encoding=utf8

" Set number
set number

" Set cursor
set guicursor=

" Fix colorscheme
set termguicolors

" Enable mouse support
set mouse=a

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable ruler
set ruler

" Enable syntax highlighting
syntax enable

" Enable auto indention
set ai

" Enable smart indention
set si

" Use spaces instead of tabs
set expandtab

" Make tabs smarter
set smarttab

" Set clipboard
set clipboard=unnamedplus
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Turn off backups (cause I hate em)
set nobackup

" Turn off second status bar
set noshowmode

" Change update time for coc.nvim
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"""""""""""""""""""""""""""""""""""""""""""""""""
"              PLUGIN CONFIGURATION             "
"""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Programming Languages Support Plugins
" Global
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Miscellaneous Vim Plugins
Plug 'jiangmiao/auto-pairs'

" Colors
Plug 'pradyungn/Mountain', {'rtp': 'vim'}
call plug#end()

" Set colorscheme
colorscheme mountain

" STATUSLINE
set laststatus=2
set statusline+=\ ‹‹
set statusline+=\ %f
set statusline+=\ ››
set statusline+=\ %m
set statusline+=%=
set statusline+=\ %l
set statusline+=\ ::
set statusline+=\ %c

au InsertLeave * hi statusline guibg=#0f0f0f guifg=#8aabac
au InsertEnter * hi statusline  guibg=#0f0f0f guifg=#8aac8b
hi statusline guibg=#0f0f0f guifg=#8aabac
