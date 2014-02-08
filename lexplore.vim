" ------------------------------------------------------------------------------
" Simple plugin used to provide layout setup for explorer with netrw.
"
" ------------------------------------------------------------------------------
" Exit when your app has already been loaded (or "compatible" mode set)
" if exists("g:loaded_lexplore") || &cp
"   finish
" endif
" let g:loaded_lexplore= "0.0.1"

" Close all splits except current one, open netrw window, set its size and
" switch back to next split.
fun! s:layout_netrw_split()
  execute "normal! \<C-W>o"
  :30vs.
  execute "normal! \<C-W>\<C-W>"
endfunction

command! Lexplore :call s:layout_netrw_split()

