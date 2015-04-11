execute pathogen#infect()

"auto launch NERDTree (uncomment line below)
"autocmd vimenter * NERDTree

"setup airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"move generated directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set title "change terminal title
syntax enable

set number  
:autocmd WinEnter * :setlocal number
:autocmd WinLeave * :setlocal nonumber

set cursorline
:autocmd WinEnter *  :setlocal cursorline
:autocmd WinLeave * :setlocal nocursorline

" change cursor to a '|' when on vim console and insert mode:
if &term == 'xterm-256color' || &term == 'screen-256color'
	let &t_SI = "\<Esc>[5 q"
	let &t_EI = "\<Esc>[1 q"
endif

set ignorecase

set wrap
set linebreak
set textwidth=0
set wrapmargin=0
set tabstop=4
set shiftwidth=4
set softtabstop=4


set splitbelow
set splitright

" Don't continue comment mark after press 'o' when youre on a commented line
set formatoptions -=cro

" set 256 color terminal
set t_Co=256

"= light color schemes ="
"set background=light
"colorscheme mac_classic
"colorscheme lightcolors
"colorscheme hemisu

"= dark color schemes ="
set background=dark
"colorscheme jellybeans
"colorscheme monokai
"colorscheme redonly
"colorscheme 256-grayvim
"colorscheme badwolf
colorscheme gotham256

iab bg: background:
iab bc: background-color:
iab trans transparent
iab pa: position:absolute;
iab pr: position:relative;
iab h_ h1,h2,h3,h4,h5,h6


" change cursor position in insert mode
inoremap <C-h> <left>
inoremap <C-l> <right>
"inoremap >< <ESC>T<ywwa></<ESC>pa><ESC>F>a

"inoremap { {<CR>}<ESC>O
inoremap <Leader>{ {<CR>}<ESC>O

map <F3> :!pbcopy<CR>u
map <F4> :.!pbpaste<CR>

" tag wrapping
:vmap sb "zdi<strong><C-R>z</strong><Esc>
:vmap si "zdi<em><C-R>z</em><Esc>

command W :w
command WW :w | !git status
command Q :q!

