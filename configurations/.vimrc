set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'

" Styles
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ','

map <Leader> <Plug>(easymotion-prefix)
map <leader>t :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" Enable syntax highlighting
syntax enable

" Enable line numbers and the ruler
set number
set ruler
set colorcolumn=80

" Color scheme
set t_Co=256
set background=dark
colorscheme gruvbox

" Use spaces instead of tabs
set expandtab
set smarttab

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Automatic indentation
set autoindent	" Insert one extra level of indentation in some cases
set smartindent	" Copy the indentation from the previous line

set wrap " Wrap lines
set paste " Aid in pasting text

" Spell checking
set spell spelllang=en_us " Spell check
set nospell
nnoremap <leader>s :set spell!<cr>

" Maintain visual mode after indenting
vmap < <gv
vmap > >gv

" Repetitions happen on multiple visually selected lines
vnoremap . :norm.<cr>

" vim-airline settings
set laststatus=2
let g:airline_theme='murmur'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

