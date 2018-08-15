scriptencoding utf-8

" no reload
"if !exists('g:loaded_air')
"  finish
"endif
"let g:loaded_air = 1

"user settings invalid
let s:save_cpo = &cpo
set cpo&vim

function! air#no_transparent()
  let l:color_schema_name = execute('colorscheme')
  execute('colorscheme ' . strpart(l:color_schema_name, 1))
  unlet l:color_schema_name
  let g:airState = 1
endfunction

function! air#transparent()
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
  highlight LineNr ctermbg=none
  highlight Folded ctermbg=none
  highlight EndOfBuffer ctermbg=none 
  let g:airState = 0
endfunction

function! air#changeState()
  if g:airState == 0
    call air#no_transparent()   
  else
    call air#transparent()
  endif
endfunction

" user setting valid
let &cpo = s:save_cpo
unlet s:save_cpo
