" Make Vim more useful
" Make Vim more useful
set nocompatible

"
" Start Vundle configuration
"

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required

"
" End Vundle configuration
"

" NERDTree file filters
let NERDTreeIgnore = ['\.pyc$']

"" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/local/bin/python3'  " TODO: Use Python 3.  Doesn't work for some reason
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_scss_checkers = ['scss-lint']  " https://github.com/causes/scss-lint
let g:syntastic_html_checkers = ['']
let g:syntastic_javascript_checkers = ['eslint']  " TODO: Get eslint to work
let g:syntastic_javascript_eslint_args = '--ext .jsx --ext .js'

"" CtrlP settings
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'  " http://dougblack.io/words/a-good-vimrc.html#ctrlp-section

" vim-jsx settings
let g:jsx_ext_required = 0

set expandtab      " tabs are converted to spaces, use only when required
set autoindent     " align the new line indent with the previous line
set nocindent
set nosmartindent
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
"set viminfo='20,<50,s10,h
set backspace=indent,eol,start
set cursorline cursorcolumn
set encoding=utf-8
set hidden
set history=1000
set hlsearch        " highlight searches
set ignorecase      " ignore case when searching
set incsearch       " do incremental searching
set laststatus=2    " allways show status line
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set nobackup        " do not keep a backup file
set nostartofline   " don't jump to first character when paging
set noswapfile		" do not keep a swap file
set number          " show line numbers
set ruler           " show the cursor position all the time
set scrolloff=3     " keep 3 lines when scrolling
set shiftwidth=4    " numbers of spaces to (auto)indent
set shiftround      " round indent to multiple of 'shiftwidth'
set shortmess=atI   " Abbreviate messages
set showcmd         " display incomplete commands
set showmode
set smartcase		" ignore case if search pattern is all lowercase, case sensitive otherwise
set softtabstop=4    " numbers of spaces to (auto)indent
set tabstop=4       " numbers of spaces of tab character
set title           " show title in console title bar
set ttyfast         " smoother changes
set undolevels=1000
set visualbell      " turn off visual bell
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set wildmenu         " Enhance command-line completion

set pastetoggle=<F2>

syntax enable
set background=dark
let g:solarized_contrast = "low"
colorscheme solarized

filetype indent plugin on

"if has("autocmd")
"    highlight TrailingWhitespace guibg=red ctermbg=darkred
"    au BufRead,BufNewFile *.py,*.html,*.css,*.scss,*.js,*.jsx match TrailingWhitespace /\s\+$/
"endif

" Keyboard mappings
let mapleader=','

nnoremap <leader>w :bp<CR>  " map F1 to open previous buffer
nnoremap <leader>e :bn<CR>  " map F2 to open next buffer

" Open nerdtree.vim
nnoremap <leader>t :NERDTreeToggle<CR>

" Clear search highlight until next search
nnoremap <leader><space> :nohlsearch<CR>

" Open ag.vim
nnoremap <leader>a :Ag

" Split window navigation shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
