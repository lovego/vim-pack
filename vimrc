set nocompatible              " be iMproved, required

filetype plugin indent on    " required
let g:go_version_warning = 0
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0
let g:go_fmt_command = "goimports"

syntax on
set fencs=utf8,gbk
set number ruler hlsearch expandtab  shiftwidth=4 tabstop=4 backspace=indent,eol,start
autocmd filetype javascript,typescript,vue setlocal shiftwidth=2 tabstop=2
" autocmd filetype go setlocal expandtab
" autocmd vimenter * NERDTree
colo desert
highlight ColorColumn ctermbg=255
set colorcolumn=101

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

packloadall
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
