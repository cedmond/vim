set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins to load
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'rhysd/committia.vim'
Plugin 'KabbAmine/gulp-vim'
Plugin 'Townk/vim-autoclose'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pelodelfuego/vim-swoop'

"colorscheme plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'vim-scripts/desertEx'
Plugin 'ewilazarus/preto'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"auto launch NERDTree (uncomment line below)
"autocmd vimenter * NERDTree

"set up airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0


"set up committia
let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
    " Additional settings
    setlocal spell

    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    end

    " Scroll the diff window from insert mode
    " Map <C-n> and <C-p>
    imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
    imap <buffer><C-p> <Plug>(committia-scroll-diff-up-half)

endfunction

"move generated directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set title "change terminal title
syntax enable

set number  
":autocmd WinEnter * :setlocal number
":autocmd WinLeave * :setlocal nonumber

set cursorline
:autocmd WinEnter *  :setlocal cursorline
:autocmd WinLeave * :setlocal nocursorline

" change cursor to a '|' when on vim console and insert mode:
if &term == 'xterm-256color' || &term == 'screen-256color'
	let &t_SI = "\<Esc>[5 q"
	let &t_EI = "\<Esc>[1 q"
endif

"== set up ctrlp =="
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules'

"set line ending to unix (convert from dos)
set ff=unix

"set leader to spacebar
let mapleader = "\<Space>"

"reset vim folders
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

syntax enable
set number
set ignorecase
set cursorline
"set hlsearch

set wrap
set linebreak
set textwidth=0
set wrapmargin=0

"set current line to center of screen
"set scrolloff=999

"= indentation ="
set tabstop=2
set shiftwidth=2
set softtabstop=2

"= split windows ="
"set splitbelow
set splitright

"set diff options
set diffopt=filler,vertical

" Don't continue comment mark after press 'o' when youre on a commented line
set formatoptions-=cro

"set 256 color terminal
"set t_Co=256

"set background=light
"colorscheme solarized

set background=dark
"colorscheme desertEx
colorscheme preto

"change cursor line (no underline ever)
"hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE


"== Autocompletions =="
iab bg: background:
iab bc: background-color:
iab trans transparent
iab pa: position:absolute;
iab pr: position:relative;
iab h_ h1,h2,h3,h4,h5,h6
iab datehdr <ESC>:r!date<CR>i


inoremap { { }<ESC>hcl
inoremap @m @media(max-width:){<CR><CR>}<ESC>?:<CR><C-l>a
inoremap @i @include
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
"inoremap >< ><<ESC>2T<ywf<a/<ESC>pF>a
"inoremap ( ()<ESC>i
"inoremap < <><ESC>i


"== Shortcuts keys =="
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <Leader>t :tabe<CR>:E<CR>
nnoremap <Leader>v :vs<CR>:E<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>l :call Swoop()<CR>

map <F3> :!pbcopy<CR>u
map <F4> :.!pbpaste<CR>
map U <C-r>

command W :w
command Q :q!
command E :Ex
