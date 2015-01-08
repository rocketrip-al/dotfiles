" Some inspiration from http://phuzz.org/vimrc.html

set nocompatible
filetype off  " Required for Vundle


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'SirVer/ultisnips'

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required

" Automatically open NERDTree when vim starts up if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDTree file filters
let NERDTreeIgnore = ['\.pyc$']

" Non-Plugin stuff after this line

"set autowrite      " auto saves changes when quitting and swiching buffer
"set expandtab      " tabs are converted to spaces, use only when required
"set noautoindent
set autoindent     " always set autoindenting on
set nocindent
"set cindent            " cindent
set nosmartindent
"set smartindent        " smart indent
"set nowrap         " don't wrap lines
"set sm             " show matching braces, somewhat annoying...
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
"set viminfo='20,<50,s10,h
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set history=1000
set hlsearch        " highlight searches
set ignorecase      " ignore case when searching
set incsearch       " do incremental searching
set laststatus=2
set ls=2            " allways show status line
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set nobackup        " do not keep a backup file
set nostartofline   " don't jump to first character when paging
set noswapfile		" do not keep a swap file
set number          " show line numbers
"set relativenumber
set ruler           " show the cursor position all the time
set scrolloff=3     " keep 3 lines when scrolling
set shiftwidth=4    " numbers of spaces to (auto)indent
set shortmess=atI   " Abbreviate messages
set showcmd         " display incomplete commands
set showmode
set smartcase		" ignore case if search pattern is all lowercase, case sensitive otherwise
set softtabstop=4    " numbers of spaces to (auto)indent
set tabstop=4       " numbers of spaces of tab character
set title           " show title in console title bar
set ttyfast         " smoother changes
set undolevels=1000
set visualbell    " turn off visual bell
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set pastetoggle=<F2>

"syntax on
syntax enable
set background=dark
colorscheme solarized

if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " Filetypes (au = autocmd)
    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back

    " When using mutt, text width=72
    au FileType mail,tex set textwidth=72
    au FileType cpp,c,java,sh,pl,php,asp  set autoindent
    "au FileType cpp,c,java,sh,pl,php,asp  set smartindent
    "au FileType cpp,c,java,sh,pl,php,asp  set cindent
    "au BufRead mutt*[0-9] set tw=72

    " Automatically chmod +x Shell and Perl scripts
    "au BufWritePost   *.sh             !chmod +x %
    "au BufWritePost   *.pl             !chmod +x %

    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
endif

" Keyboard mappings
map <F1> :bp<CR>  " map F1 to open previous buffer
map <F2> :bn<CR>  " map F2 to open next buffer
nmap ,n :NERDTreeToggle<CR>
"map <silent> <C-N> :silent noh<CR> " turn off highlighted search
"map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
"map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
"map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
"----- write out html file
"map ,h :source $VIM/vim71/syntax/2html.vim<cr>:w<cr>:clo<cr>


" Common command line typos
"cmap W w
"cmap Q q

" Keyboard mapping for numeric keypad
"imap <Esc>OM <c-m>
" map <Esc>OM <c-m>
"imap <Esc>OP <nop>
" map <Esc>OP <nop>
"imap <Esc>OQ /
" map <Esc>OQ /
"imap <Esc>OR *
" map <Esc>OR *
"imap <Esc>OS -
" map <Esc>OS -

"imap <Esc>Ol +
"imap <Esc>Om -
"imap <Esc>On ,
"imap <Esc>Op 0
"imap <Esc>Oq 1
"imap <Esc>Or 2
"imap <Esc>Os 3
"imap <Esc>Ot 4
"imap <Esc>Ou 5
"imap <Esc>Ov 6
"imap <Esc>Ow 7
"imap <Esc>Ox 8
"imap <Esc>Oy 9
"imap <Esc>Oz 0

