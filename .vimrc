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
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'rhysd/committia.vim'
Plugin 'KabbAmine/gulp-vim'
Plugin 'Townk/vim-autoclose'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'jeetsukumaran/vim-markology'
Plugin 'kshenoy/vim-signature'
Plugin 'rlue/vim-getting-things-down'
Plugin 'mattn/emmet-vim'

"colorscheme plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'vim-scripts/desertEx'
Plugin 'ewilazarus/preto'
Plugin 'reedes/vim-colors-pencil'
Plugin 'sjl/badwolf'
Plugin 'ronny/birds-of-paradise.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'hzchirs/vim-material'
Plugin 'gkjgh/cobalt'
Plugin 'elmindreda/vimcolors'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"auto launch NERDTree (uncomment line below)
"autocmd vimenter * NERDTree

"set long list option 
let g:netrw_liststyle= 1
let g:netrw_banner= 0

"set up airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

"statusline
set statusline=%f "current file
set statusline+=%{fugitive#statusline()} "git branch
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines

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

"setup instant markdown
"https://github.com/suan/vim-instant-markdown
"set this if there are issues
"let g:instant_markdown_slow = 1


"move generated directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"set title "change terminal title
syntax enable

"set system clipboard
"set clipboard=unnamed

set number  
":autocmd WinEnter * :setlocal number
":autocmd WinLeave * :setlocal nonumber

set cursorline
":autocmd WinEnter *  :setlocal cursorline
":autocmd WinLeave * :setlocal nocursorline

" change cursor to a '|' when on vim console and insert mode:
" if &term == 'xterm-256color' || &term == 'screen-256color'
	let &t_SI = "\<Esc>[5 q"
	let &t_EI = "\<Esc>[1 q"
" endif

"== set up ctrlp =="
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules'

"set line ending to unix (convert from dos)
set ff=unix

"set leader to spacebar
let mapleader = "\<Space>"

" recursive paths for :find
set path+=**

"search stuff
set ignorecase
"set hlsearch

"search ignore
set wildignore+=**/node_modules/**

"wrapping
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
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set spell checking for text file types
"autocmd FileType markdown setlocal spell
"autocmd FileType text setlocal spell

"set 256 color terminal
"set t_Co=256
set termguicolors

" set background=light
"colorscheme solarized
"colorscheme pencil

set background=dark
"colorscheme desertEx
"colorscheme preto
" colorscheme badwolf
"colorscheme birds-of-paradise
"colorscheme gotham
"colorscheme vim-material
colorscheme monokai
" colorscheme cobalt

"== Autocompletions =="
iab bg: background:
iab bc: background-color:
iab trans transparent
iab pa: position:absolute;
iab pr: position:relative;
iab h_ h1,h2,h3,h4,h5,h6
iab datehdr <ESC>:r!date<CR>i


"inoremap @m @media(max-width:){<CR><CR>}<ESC>?:<CR><C-l>a
"inoremap @i @include
inoremap ;; ;<ESC>
inoremap JJ <ESC>
inoremap {<CR><CR> {<CR><CR>}<ESC>kcc


"== Shortcuts keys =="
nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <Leader>o o<ESC>k
nnoremap <Leader>O O<ESC>j
nnoremap <Leader>D :r!date<CR>yypVr-
nnoremap <Leader>; <ESC>A;<ESC>

map <F3> :!pbcopy<CR>u
map <F4> :.!pbpaste<CR>

command Vs vs
command W w 
command Q q 
command E Explore 
