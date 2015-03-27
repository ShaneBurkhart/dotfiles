source ~/.vim/bundles.vim


"====== Mappings =======
let mapleader = ","
nore ; :

"Exit insert mode
inoremap jj <Esc>
inoremap jJ <Esc>


"=========== Colors ============
set t_Co=256
set term=screen-256color

"Only load the colors if it isn't currently loaded. This was messing up the
"colors for the statusline. The molokai clears all highlights so when this
"file is sourced, it removes statusline colors.
if(!exists("g:colors_name") || g:colors_name != 'molokai')
  colorscheme molokai
endif
syntax enable

"Makes the background match the terminal background.  Allows transparency.
hi Normal ctermbg=NONE
hi nonText ctermbg=NONE

"Makes matching parenthesis more visable
hi MatchParen cterm=bold ctermbg=none ctermfg=31


"=========== Auto ============
au BufRead,BufNewFile *.go set filetype=go
au BufNewFile,BufRead *.md setlocal linebreak


"=========== Misc ============
set number

set sidescrolloff=5
set scrolloff=5

set nofoldenable
let g:vim_markdown_folding_disabled=1

"Vim command autocomplete
set wildmenu
set wildmode=list:longest,full

"Move backup files
set backupdir=./.backup,/tmp
set directory=./.backup,/tmp


set softtabstop=4
set shiftwidth=4
" Custom indentation for certain file types
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2


source ~/.vim/plugins.vim
