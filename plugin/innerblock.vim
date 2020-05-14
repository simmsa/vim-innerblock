" Inside Brackets
let g:bracket_pairs = [
    \ ['(', ')'],
    \ ['{', '}'],
    \ ['[', ']'],
    \ ['<', '/>\|>'],
\]

let g:string_pairs = [
    \ ["'", "'"],
    \ ['"', '"'],
    \ ['`', '`'],
\]

" Search this many lines above and below the current window
let g:inner_block_limit = 50
let g:inner_block_max_level = 16

nnoremap <silent> cib :call innerblock#DeleteInnerBlock(g:bracket_pairs, "c")<CR>
nnoremap <silent> kib :call innerblock#DeleteInnerBlock(g:bracket_pairs, "k")<CR>

" Inside String
nnoremap <silent> cis :call innerblock#DeleteInnerBlock(g:string_pairs, "c")<CR>
nnoremap <silent> kis :call innerblock#DeleteInnerBlock(g:string_pairs, "k")<CR>

nnoremap <silent> sib :call innerblock#SortInsideBlock()<CR>
