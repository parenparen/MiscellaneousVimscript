
"https://github.com/parenparen/
"
"Copyright 2014 Derek Mueller
"Released under the MIT license
"http://opensource.org/licenses/MIT


" comment out lines between marks set by motion command
:function! CommentAll(...)
:   '[,'] s/^/\/\/
:endfunction

:function! UncommentAll(...)
:   '[,'] s/^\/\///
:endfunction


:nnoremap <leader>oc :set opfunc=CommentAll<CR>g@
:nnoremap <leader>ouc :set opfunc=UncommentAll<CR>g@


"toggle true/false
:nnoremap <leader>t :execute "normal! viwy" <cr> :if getreg("\"") ==# 'true' <cr> execute "normal! viwcfalse\e" <cr> elseif getreg("\"") ==# 'false' <cr> execute "normal! viwctrue\e" <cr> endif <cr> :execute "normal! viwb\e" <cr>

