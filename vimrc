source ~/.vim/bundles.vim


"====== Mappings =======
let mapleader = ","
nore ; :

"Exit insert mode
inoremap jj <Esc>
inoremap jJ <Esc>

" Shortcut to edit vimrc
nmap <leader>vimrc :vnew ~/.vimrc<cr>


"=========== Colors ============
set t_Co=256

syntax enable
set background=dark
let g:gruvbox_italic=0
let g:eldar_italic=0
if(!exists("g:colors_name") || g:colors_name != 'eldar')
  colorscheme eldar
endif


"=========== Auto ============
au BufRead,BufNewFile *.ts set filetype=typescript
au BufRead,BufNewFile *.go set filetype=go
au BufNewFile,BufRead *.md setlocal linebreak


"=========== Misc ============
set number

set scrolloff=5

" Normal backspace
set backspace=indent,eol,start

set nofoldenable
let g:vim_markdown_folding_disabled=1

let g:netrw_liststyle=3

"Vim command autocomplete
set wildmenu
set wildmode=list:longest,full
set wildignore+=*/node_modules/*,*/build/*,*/data/*,*/bin/*

"Move backup files
set backupdir=./.backup,/tmp
set directory=./.backup,/tmp

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" Custom indentation for certain file types
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType go setlocal tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab
autocmd FileType haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Netrw file explorer
let g:netrw_liststyle=3

set clipboard=unnamed,unnamedplus

source ~/.vim/plugins.vim
