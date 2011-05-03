" Vimrc - VIM startup file
" This is a collection of useful settings, commands etc compiled by Joshua Gross.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=300

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" When vimrc is edited, reload it.
" I don't think this works.
autocmd! bufwritepost vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set so=7 " Set 7 lines to the curors - when moving vertical..
set wildmenu "Turn on WiLd menu
set ruler "Always show current position
set cmdheight=2 "The commandbar height

syntax enable " Enable syntax highlighting
set number " Display line numbers
set nowrap " turn off text wrapping

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Searching
set incsearch " Incremental searching - shows results WHILE you are typing a search word
set ignorecase smartcase " Make searching case-insensitive by default
set ignorecase "Ignore case when searching
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set magic "Set magic on, for regular expressions (HOW does this work?)
set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" ----- Mac-Vim: copy/paste to/from system clipboard -----
"map *y !pbcopy<CR>u 
"map *p r !pbpaste<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" ----- Indenting/Tabs -----
" Set tab width
set tabstop=4
" Number of spaces used for auto-indenting. IMPORTANT: should be the
" same as your tabstop or else auto-indenting will be funky!
set shiftwidth=4
" Enable smart indenting
set smartindent si
" Smarter autoindent when pasting blocks of code
nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>
" Correct indentation after opening a phpdoc/javadoc block and automatic * on every line
set formatoptions=qroct
" Spelling
nnoremap <F6> :setlocal spell spelllang=en_us<Enter>
nnoremap <F7> :setlocal spell spelllang=<Enter>

" Fix code listings pasted from Word
noremap <F8> :%s/[‘’]/'/g<Enter>:%s/[“”]/"/g<Enter>:%s/^\s*[0-9]*//g<Enter>

" ----- Useful keyboard shortcut time-savers -----
" Real nice: makes backspace erase over everything
" If you press delete at the beginning of a line, it brings that line
" to the end of the previous line (as you would come to expect using
" modern GUI editors)
set backspace=2

color peachpuff

" Buffer explorer
" README note: This maps TAB to shift one buffer left; SEMICOLON to shift right.
" Try opening 5 or 6 files and then use tab/semicolon to navigate.
noremap ; :MBEbn <Enter>
noremap <tab> :MBEbp <Enter>

" Projectify
"source ~/project.vim 

" Custom highlighting
so ~/.vim/plugin/highlights.vim
Highlight 4 TODO

" Load all help docs
helptags ~/.vim/doc

" Super fancy status line
" http://www.linux.com/archive/feature/120126
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LINES=%L] 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins For Make IDE 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VTreeExplorer
" Open with :VTreeExplore /path/
let treeExplDirSort = 1
let treeExplVertical = 1
let treeExplWinSize = 40
command! -n=? -complete=dir JTree :VSTreeExplore
" Taglist and easytags!
" README note: Make sure to install exuberant ctags on your system: http://vim-taglist.sourceforge.net/faq.html

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Env: PHP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ----- Dictionary completion for PHP -----
" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt

" set "make" command when editing php files
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Env: Assembly
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Assembly code: highlight lines over 80 columns
autocmd FileType asm au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
autocmd FileType asm au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Env: LaTeX
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType tex au BufWinEnter * set wrap
autocmd FileType tex nmap <silent> j gj
autocmd FileType tex nmap <silent> k gk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Env: Ruby/Rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype plugin indent on
