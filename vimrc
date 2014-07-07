source ~/.vim/bundles.vim " Load bundles

" Junk for allowing 256 colors
set term=screen-256color
set t_Co=256

" Colors I like!
colorscheme molokai

" Makes the background of noText and Normal to terminal
hi Normal ctermbg=NONE
hi nonText ctermbg=NONE

" fix paren highlighting
hi MatchParen cterm=bold ctermbg=none ctermfg=31

" Junk to set up the autoindent!
" === MINE ===
"set softtabstop=2
"set shiftwidth=2
" === YELP ===
set softtabstop=4
set shiftwidth=4
set expandtab
filetype indent on

" === YELP ===
" set tags=./tags;/

" Allows autocompletion of vim commands if you press tab
set wildmenu
set wildmode=list:longest,full

" Remap semicolon to be colon, so it is easier to do vim commands.
nore ; :

set mouse=a

" Set the scrolling to be more fluid and show more
set sidescrolloff=5
set scrolloff=5

" Random Settings
set showcmd     " Command in the bottom of screen
set showmode    " Show current mode
set number      " line numbers

" Remap paste to take line indent into account
nore p ]p

" Remap jj to escape out of insert mode!
inoremap jj <Esc>
" Remap jJ to escape out of insert mode!  Always messing that shit up.
inoremap jJ <Esc>

" Jump back with <ctrl><[>
nnoremap <C-[> <C-t>

let mapleader = ","

" Easier split tab switching
nnoremap H <C-w>j
nnoremap J <C-w>h
nnoremap K <C-w>l
nnoremap L <C-w>k

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

" Autocomplete code
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"
set complete-=i

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

set nofoldenable    " disable folding"
let g:vim_markdown_folding_disabled=1

" Actually call Stripe Whitespace function on pre write
au FileType * au BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Go syntax highlighting for go files
au BufRead,BufNewFile *.go set filetype=go

" Line break for text wrapping on Markdown files
au BufNewFile,BufRead *.md setlocal linebreak

" Load plugin config
source ~/.vim/plugins.vim
