 "Nerdcommenter
" <comma><space> to invert comment on the current line/selection
nmap <leader><space> :call NERDComment(0, "invert")<cr>
vmap <leader><space> :call NERDComment(0, "invert")<cr>

" CtrlP
" <comma><comma> opens search
let g:ctrlp_map = '<leader>,'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_max_files=0
let g:ctrlp_user_command = "find %s -type f | egrep -v '(/\.(git|hg|svn)|\.(solr|tmp|pyc)$)'"

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
    \ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
    \ }

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
    \ 'file': '\.so$\|\.dat$|\.DS_Store|\.pyc$'
    \ }

nmap <leader>l :CtrlPLine<cr>
nmap <leader>b :CtrlPBuff<cr>
nmap <leader>m :CtrlPBufTag<cr>
nmap <leader>M :CtrlPBufTagAll<cr>

let g:ctrlp_clear_cache_on_exit = 1
" ctrlp leaves stale caches behind if there is another vim process runnin
" which didn't use ctrlp. so we clear all caches on each new vim invocation
cal ctrlp#clra()

let g:ctrlp_max_height = 40


" Rspec.vim mappings
" map <leader>t :call RunCurrentSpecFile()<CR>
" map <leader>s :call RunNearestSpec()<CR>
" map <leader>l :call RunLastSpec()<CR>
" map <leader>a :call RunAllSpecs()<CR>
