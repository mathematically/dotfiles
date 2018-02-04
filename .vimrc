" ctrlp, gundo, nerdtree, vim-airline, vim-airline-themes, vim-sensible,
" vim-unimpared.
execute pathogen#infect()

set history=1000
set title

filetype plugin on
filetype indent on

let mapleader=","
let g:mapleader=","

" stop beeps
set noerrorbells
set visualbell

" auto load on external change
set autoread


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM UI

set wildmenu
set ruler
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set ai " Auto indent
set si " Smart indent
set wrap " wrap lines

" Highlight matching brackets
set showmatch
set mat=2

" make scroll work a few lines before screen edge
set so=7

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" make airline work as we want it
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_colors'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
"

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Spell checking toggle
map <leader>ss :setlocal spell!<CR>

" paste mode toggle
map <leader>pp :setlocal paste!<CR>

nnoremap <leader>gn :GundoToggle<CR>
nnoremap <F9> :GundoToggle<CR>

nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <F5> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc.


" Persistent undo across file close
try
	set undodir=~/.vim_runtime/temp_dirs/undodir
	set undofile
catch
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug-in configuration
"

let g:NERDTreeWinPos="right"
let g:NERDTreeSize=35

" use Silver Searcher for ctrlp plugin if installed else git ls files.
let g:ctrlp_use_caching = 0
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	let g:ackprg = 'ag --vimgrep --smart-case'
else   
	let g:ctrlp_user_command = ['.git',
	\ 'cd %s && git ls-files . -co --exclude-standard',
	\ 'find %s -type f' ]
endif

function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	endif
	return ''
endfunction

