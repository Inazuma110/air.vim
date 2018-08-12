scriptencoding utf-8

" no reload
if !exists('g:loaded_air')
  finish
endif
let g:loaded_air = 1

"user settings invalid
let s:save_cpo = &cpo
set cpo&vim

function! air#transparent()
  echo "B"
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
  highlight LineNr ctermbg=none
  highlight Folded ctermbg=none
  highlight EndOfBuffer ctermbg=none 
endfunction

" user setting valid
let &cpo = s:save_cpo
unlet s:save_cpo
