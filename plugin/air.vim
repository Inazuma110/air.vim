scriptencoding utf-8

" no reload
"if exists('g:loaded_air')
"  finish
"endif
"let g:loaded_air = 1

"user settings invalid
let s:save_cpo = &cpo
set cpo&vim


noremap t :call air#changeState()
command! Air :call air#transparent()
command! Nonair :call air#no_transparent()

" user setting valid
let &cpo = s:save_cpo
unlet s:save_cpo
