" Settings for Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

" Own settings
syntax enable
set background=dark
let g:solarized_termcolors=256
" colorscheme solarized

set nu							" set linenumber
set tabstop=2				" number of visual spaces per TAB
set softtabstop=4 	" number of spaces in tab when editing
set shiftwidth=4		" number of spaces in when autoindent
set autoindent			" copy indentation from previous line
set showcmd					" show command in bottom bar
set showmatch				" highlight matching bracket
set lazyredraw			" redraw only when we need to
set cursorline			" highlight current line
set title						" show title of file 
set scrolloff=3			" start scroll 3 lines before off screen

imap jj <Esc>

" Fix line warping
nnoremap j gj
nnoremap k gk

" Unbinds the arrow keys
for prefix in ['i', 'n', 'v']
		for key in ['<Up>', '<Down>', '<Left>', '<Right>']
				exe prefix."noremap".key." <Nop>"
		endfor
endfor

" Settings for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = ['gcc']

" Settings for airline
set laststatus=2
let g:airline_theme='wombat'
