execute pathogen#infect()

"auto launch NERDTree (uncomment line below)
"autocmd vimenter * NERDTree
"close NERDTree if it is the only window
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"use CTRL-n to toggle NERDTree
"map <C-n> :NERDTreeToggle<CR>

"setup airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

"window change settings
autocmd WinEnter * set number
autocmd WinLeave * set nonumber
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline

" change cursor to a '|' when on vim console and insert mode:
if &term == 'xterm-256color' || &term == 'screen-256color'
	let &t_SI = "\<Esc>[5 q"
	let &t_EI = "\<Esc>[1 q"
endif

"set up ctrlp
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules'

"set up net_rw (built in file browser)
"let g:netrw_liststyle=3

"set up Gundo

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set title "change terminal title
syntax enable
set number
set ignorecase
set cursorline
"set hlsearch
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

"= indentation ="
set tabstop=2
set shiftwidth=2
set softtabstop=2

"= split windows ="
"set splitbelow
set splitright

" Don't continue comment mark after press 'o' when youre on a commented line
set formatoptions -=cro

"set 256 color terminal
set t_Co=256

"= light color schemes ="
"set background=light
"colorscheme mac_classic
"colorscheme lightcolors
"colorscheme hemisu

"set background=dark
"= dark color schemes ="
"colorscheme jellybeans
"colorscheme monokai
"colorscheme redonly
"colorscheme 256-grayvim
"colorscheme badwolf
colorscheme gotham256
"colorscheme cobalt

"change cursor line (no underline ever)
"hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE

iab bg: background:
iab bc: background-color:
iab trans transparent
iab pa: position:absolute;
iab pr: position:relative;
iab h_ h1,h2,h3,h4,h5,h6


" change cursor position in insert mode
"inoremap <C-h> <left>
"inoremap <C-l> <right>
"inoremap <C-j> <down>
"inoremap <C-k> <up>

"autocompletes 
inoremap { {<CR>}<ESC>O
inoremap @m @media(max-width:){<CR><CR>}<ESC>?:<CR><C-l>a
inoremap @i @include
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
"inoremap >< ><<ESC>2T<ywf<a/<ESC>pF>a
"inoremap ( ()<ESC>i
"inoremap < <><ESC>i

map <F3> :!pbcopy<CR>u
map <F4> :.!pbpaste<CR>

command W :w
command Q :q!
