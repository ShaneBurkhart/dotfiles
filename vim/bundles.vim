" Plugins

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim.git'

" ======= Golang =========
"Plugin 'fatih/vim-go'

" ======= MY PLUGINS ==============
Plugin 'ShaneBurkhart/StatusLinePlus'
Plugin 'ShaneBurkhart/WhiteSpaceRemover'
Plugin 'ShaneBurkhart/EasyVimrcEdit'
Plugin 'ShaneBurkhart/CursorLine'

" ======== Autocomplete =========
" Smart commenting -- <comma><c><space> toggles comments
Plugin 'scrooloose/nerdcommenter'

" Autocompletes Ruby with 'end'
Plugin 'tpope/vim-endwise'

" Auto close braces, etc.
Plugin 'Raimondi/delimitMate'

" ======= Version Control =========
" Adds line diffs to gutter
Plugin 'airblade/vim-gitgutter'

" ======== Syntax Specific =========
" handlebars syntax highlighting
Plugin 'nono/vim-handlebars'

" markdown
Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on     " required!

" Unused Plugin Pool:
	" File tree similar to Sublime explorer
	" Plugin 'scrooloose/nerdtree'
	"
	" Search for files -- <comma><comma> -- Have to set that up
	" Plugin 'kien/ctrlp.vim'
	"
	" Plugin 'ShaneBurkhart/TabComplete'
	"
	" Manipulate surrounding braces, etc. -- Basic: <c><s><to-change><change-to> -- Look that shit up
	" Plugin 'tpope/vim-surround'

	" Nerdtree tab management -- Should go with Nerdtree
	" Plugin 'jistr/vim-nerdtree-tabs'
	"
	" Git commands from Vim command line
	" Plugin 'tpope/vim-fugitive'
	"
	" Fash key strokes but can't use because control p
	" Plugin 'Lokaltog/vim-easymotion'
	"
	" HTML autocomplete based on CSS selectors -- Would be nice if didn't use
	" templating language
	" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	"
	" Rails helpers -- Kind of like Git Fugitive for Rails -- Keeping for Rails
	" Plugin 'tpope/vim-rails.git'



	" ==============  HELP!!!  ========================
	" Brief help
	" :PluginList          - list configured bundles
	" :PluginInstall(!)    - install(update) bundles
	" :PluginSearch(!) foo - search(or refresh cache first) for foo
	" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
	"
	" see :h vundle for more details or wiki for FAQ
	" NOTE: comments after Plugin command are not allowed..
