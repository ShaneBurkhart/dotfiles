
source ~/.vim/bundles.vim " Load bundles

" Junk for allowing 256 colors
set term=builtin_xterm
set t_Co=256

" Colors I like!
colorscheme molokai
" Koehler, Zenburn, Evening, Wombat, Inkpot, Jellybeans, molokai, vividchalk

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" fix paren highlighting
hi MatchParen cterm=bold ctermbg=none ctermfg=31

" Junk to set up the autoindent!
set softtabstop=2
set shiftwidth=2
set expandtab
filetype indent on

" Allows autocompletion of vim commands if you press tab
set wildmenu
set wildmode=list:longest,full

" Remap semicolon to be colon, so it is easier to do vim commands.
nore ; :

" Set the scrolling to be more fluid and show more
set sidescrolloff=5
set scrolloff=5

" Random Settings
set showcmd
set showmode
set number      " line numbers

" Remap paste to take line indent into account
nore p ]p

" Remap jj to escape out of insert mode!  Wonderful!
inoremap jj <Esc>

let mapleader = ","

" Easier split tab switching
nnoremap H <C-w>j
nnoremap J <C-w>h
nnoremap K <C-w>l
nnoremap L <C-w>k

" Strip trailing whitespace on save:
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

" Get rid of swp file clutter
set backupdir=./.backup,/tmp
set directory=./.backup,/tmp

autocmd FileType * autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

source ~/.vim/plugins.vim " Load plugin config
