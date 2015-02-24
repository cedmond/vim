execute pathogen#infect()

"auto launch NERDTree (uncomment line below)
"autocmd vimenter * NERDTree

"setup airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

syntax enable

set number  
set cursorline
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

:autocmd WinEnter * :setlocal number
:autocmd WinLeave * :setlocal nonumber

:autocmd WinEnter *  :setlocal cursorline
:autocmd WinLeave * :setlocal nocursorline

"= light color schemes ="
"colorscheme mac_classic
"colorscheme lightcolors
"colorscheme hemisu

"colorscheme jellybeans
"colorscheme monokai
"colorscheme redonly
"colorscheme 256-grayvim
colorscheme badwolf

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

inoremap { {<CR>}<ESC>O

map <F3> :!pbcopy<CR>u
map <F4> :.!pbpaste<CR>

" tag wrapping
:vmap sb "zdi<strong><C-R>z</strong><Esc>
:vmap si "zdi<em><C-R>z</em><Esc>

command W :w
command WW :w | !git status
command Q :q!

