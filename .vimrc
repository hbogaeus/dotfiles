" Settings for Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'rust-lang/rust.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-fugitive'


call vundle#end()
filetype plugin indent on

" Own settings
syntax enable
colorscheme gruvbox
set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

" Turn on syntax highlighting for .smv files (for DD2459)
au BufNewFile,BufRead *.smv set filetype=smv

set expandtab       " convert tabs to spaces
set nu              " set linenumbers
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces in when autoindent
"set autoindent     " copy indentation from previous line
set showcmd         " show command in bottom bar
set showmatch       " highlight matching bracket
set lazyredraw      " redraw only when we need to
set cursorline      " highlight current line
set title           " show title of file 
set scrolloff=3     " start scroll 3 lines before off screen
" set cc=80           " colorize column 80
set hlsearch

filetype indent plugin on

imap jj <Esc>


" Fix line warping
nnoremap j gj
nnoremap k gk


" Turn highlight search off with space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


" Unbinds the arrow keys
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        exe prefix."noremap".key." <Nop>"
    endfor
endfor

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_asm_checkers = ['nasm']
let g:syntastic_rust_checkers = ['rustc']
" Elixir checker is slow..
" let g:syntastic_elixir_checkers = ['elixir']

" Required for checking elixir
" Can be security risk as it runs the code when checking
"let g:syntastic_enable_elixir_checker = 1

" Airline
set laststatus=2
let g:airline_theme='gruvbox'

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'file': '\v\.(class)$',
\}

" IndentLine
let g:indentLine_char = '│'
