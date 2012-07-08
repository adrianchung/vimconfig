set nocompatible

" Set the color scheme
colorscheme torte

" set filetype stuff to on
filetype on
"filetype plugin on
"filetype indent on

" vundle setup stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let VundLe manage VundLe
Bundle 'gmarik/vundle'

" My Bundles here
"
" Syntax related stuff
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" Quick surround with quotes
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'

" Use % to match if/elseif/html tags/etc
Bundle 'tsaleh/vim-matchit'

" Auto completion of templates with <TAB>
Bundle 'msanders/snipmate.vim'

" Use <TAB> for insertion completions for patterns defined before
Bundle 'ervandew/supertab'

" Allows switching between source and header using :A
Bundle 'vim-scripts/a.vim'

" Make it easier to find stuff
Bundle 'vim-scripts/L9.git'
Bundle 'vim-scripts/FuzzyFinder.git'

" Bring up folder viewer"
Bundle 'scrooloose/nerdtree'

" Awesome syntax checking for VIM
Bundle 'scrooloose/syntastic'

" Mka the bottom statline pretty
Bundle 'scrooloose/vim-statline'

" vim-scripts report
" Bundle 'L9'
" Bundle 'FuzzyFinder'
"
" non github repos
" Bundle 'git://git.wincent.com/commant-t.git'
filetype plugin indent on     " required!
 "
 " " Brief help
 "  " :BundleList          - list configured bundles
 "  " :BundleInstall(!)    - install(update) bundles
 "  " :BundleSearch(!) foo - search(or refresh cache first) for foo
 "  " :BundleClean(!)      - confirm(or auto-approve) removal of unused
 "  bundles
 "  "
 "  " see :h vundle for more details or wiki for FAQ
 "  " NOTE: comments after Bundle command are not allowed..

" Set search scan to wrap lines
set wrapscan

" indenting
set expandtab
set smartindent
set autoindent
set smarttab
set number

" highlight search results
set hlsearch

" expand tabs
set tabstop=4
set shiftwidth=4

" Set the search scan so that it does not ignore case
set noignorecase

" Set the forward slash to be the default slash
set shellslash

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Switch on syntax highlighting
syntax on

" When the page starts to scroll, keep the cursor 8 lines from the top and 8 
" lines from the bottom
set scrolloff=8

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Keep some stuff in history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Use Tab or Shift-Tab to indent blocks of code
vnoremap <Tab> >
vnoremap <S-Tab> <

" Set initial window size
if has("gui_running")
    " GUI is running or is about to start
    " Maximize gvim window
    set lines=80 columns=120
else
    " This is console VIM
    if exists("+lines")
        set lines=50
    endif
    if exists("+columns")
        set columns=100
    endif
endif

" Nerd tree show up automatically with VIM
" autocmd vimenter * NERDTree

" Open NERDTree with F2
map <F2> :NERDTreeToggle<CR>
