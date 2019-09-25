set nocompatible
filetype plugin indent on

syntax on
set fencs=utf8,gbk
set number ruler hlsearch expandtab shiftwidth=2 tabstop=2 backspace=2
colo desert
highlight ColorColumn ctermbg=255
set colorcolumn=101

let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0
let g:go_fmt_command = "goimports"

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


syn match markdownError "\w\@<=\w\@="

autocmd filetype go setlocal expandtab

" autocmd vimenter * NERDTree
