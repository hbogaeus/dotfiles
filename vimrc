" Vundle setup
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

" Own setup
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set nu				" set linenumber
set tabstop=4 		" number of visual spaces per TAB
set softtabstop=4 	" number of spaces in tab when editing
set shiftwidth=4	" number of spaces in when autoindent
set autoindent		" copy indentation from previous line
set showcmd 		" show command in bottom bar
set showmatch		" highlight matching bracket
set lazyredraw		" redraw only when we need to

" Fix wrap lines
nnoremap j gj
nnoremap k gk

" Unbind arrow keys in all modes
for prefix in ['i', 'n', 'v']
	for key in ['<Up>', '<Down>', '<Left>', '<Right>']
		exe prefix."noremap".key." <Nop>"
	endfor
endfor


" Syntastic Setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = ['gcc']

" Airline setup
" set laststatus=2	"Always show Airline
let g:airline_theme='wombat'
